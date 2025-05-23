//
//  PaymentView.swift
//  Appetizers
//
//  Created by Fariza Nuralimova on 23.05.2025.
//

import Foundation
import SwiftUI

struct PaymentView: View {
    @EnvironmentObject var order: OrderModel
    @State private var cardholderName = ""
    @State private var cardNumber = ""
    @State private var expiryDate = ""
    @State private var cvv = ""
    
    // Shipping address fields
    @State private var addressLine1 = ""
    @State private var addressLine2 = ""
    @State private var city = ""
    @State private var state = ""
    @State private var zipCode = ""
    @State private var country = ""
    
    @State private var isPaymentComplete = false
    
    // Raw digit counts for validation
    private var cardDigits: String {
        cardNumber.filter { $0.isNumber }
    }
    private var isCardValid: Bool {
        cardDigits.count == 16
    }
    private var isExpiryValid: Bool {
        // Expect format MM/YY
        let parts = expiryDate.split(separator: "/")
        if parts.count == 2,
           parts[0].count == 2,
           parts[1].count == 2,
           let month = Int(parts[0]), month >= 1, month <= 12 {
            return true
        }
        return false
    }
    private var isCVVValid: Bool {
        cvv.filter { $0.isNumber }.count == 3
    }
    
    var body: some View {
        VStack {
            Form {
                Section(header: Text("Payment Information")) {
                    TextField("Cardholder Name", text: $cardholderName)
                    
                    TextField("Card Number", text: $cardNumber)
                        .keyboardType(.numberPad)
                        .onChange(of: cardNumber) { newValue in
                            // Keep digits only and limit length
                            let digits = newValue.filter { $0.isNumber }
                            let limited = String(digits.prefix(16))
                            // Group by 4
                            var grouped = ""
                            for index in stride(from: 0, to: limited.count, by: 4) {
                                let start = limited.index(limited.startIndex, offsetBy: index)
                                let end = limited.index(start, offsetBy: min(4, limited.count - index))
                                grouped += limited[start..<end]
                                if end < limited.endIndex { grouped += " " }
                            }
                            cardNumber = grouped
                        }
                    if !isCardValid {
                        Text("Card number must be 16 digits.")
                            .foregroundColor(.red)
                            .font(.caption)
                    }
                    
                    HStack {
                        TextField("MM/YY", text: $expiryDate)
                            .keyboardType(.numbersAndPunctuation)
                            .onChange(of: expiryDate) { newValue in
                                // Keep digits only, limit to 4
                                let digits = newValue.filter { $0.isNumber }
                                let limited = String(digits.prefix(4))
                                // Format as MM/YY
                                let month = String(limited.prefix(2))
                                var year = ""
                                if limited.count > 2 {
                                    year = String(limited.suffix(limited.count - 2))
                                }
                                expiryDate = year.isEmpty ? month : "\(month)/\(year)"
                            }
                        Spacer()
                        SecureField("CVC", text: $cvv)
                            .keyboardType(.numberPad)
                            .frame(width: 80)
                            .onChange(of: cvv) { newValue in
                                // Keep only digits, max 3
                                cvv = String(newValue.filter { $0.isNumber }.prefix(3))
                            }
                    }
                    if !isExpiryValid {
                        Text("Enter expiry as MM/YY.")
                            .foregroundColor(.red)
                            .font(.caption)
                    }
                    if !isCVVValid {
                        Text("CVC must be 3 digits.")
                            .foregroundColor(.red)
                            .font(.caption)
                    }
                }
                
                Section(header: Text("Shipping Address")) {
                    TextField("Address Line 1", text: $addressLine1)
                    TextField("Address Line 2", text: $addressLine2)
                    TextField("City", text: $city)
                    TextField("State/Province", text: $state)
                    TextField("ZIP/Postal Code", text: $zipCode)
                        .keyboardType(.numbersAndPunctuation)
                    TextField("Country", text: $country)
                }
            }
            
            Spacer()
            
            Button(action: {
                // TODO: integrate payment processing
                isPaymentComplete = true
            }) {
                Text(isPaymentComplete ? "Payment Complete" : "Pay $\(order.totalPrice, specifier: "%.2f")")
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.borderedProminent)
            .disabled(
                !isCardValid ||
                !isExpiryValid ||
                !isCVVValid ||
                cardholderName.isEmpty ||
                addressLine1.isEmpty ||
                city.isEmpty ||
                zipCode.isEmpty ||
                country.isEmpty ||
                isPaymentComplete
            )
            .padding()
        }
        .navigationTitle("Payment")
        .alert("Thank you!", isPresented: $isPaymentComplete) {
            Button("OK") {
                // Optionally clear order or pop view
            }
        } message: {
            Text("Your order has been placed successfully.")
        }
    }
}

// MARK: - Previews


struct PaymentView_Previews: PreviewProvider {
    static var previews: some View {
        PaymentView()
            .environmentObject(OrderModel())
    }
}
