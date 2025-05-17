//
//  AccountView.swift
//  Appetizers
//
//  Created by Диас Мухамедрахимов on 14.05.2025.
//

import SwiftUI

struct AccountView: View {
    
    @StateObject var viewModel = AccountViewModel()
    @FocusState private var focusedtextField: FormTextField?
    
    enum FormTextField {
        case firstname, lastname, email
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Personal info")) {
                    TextField("First Name", text: $viewModel.user.firstName)
                        .focused($focusedtextField, equals: .firstname)
                        .onSubmit {
                            focusedtextField = .lastname
                        }
                        .submitLabel(.next)
                    TextField("Last Name", text: $viewModel.user.lastName)
                        .focused($focusedtextField, equals: .lastname)
                        .onSubmit {
                            focusedtextField = .email
                        }
                        .submitLabel(.next)
                    TextField("E-mail", text: $viewModel.user.email)
                        .focused($focusedtextField, equals: .email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .autocorrectionDisabled(true)
                        .onSubmit {
                            focusedtextField = nil
                        }
                        .submitLabel(.continue)
                    
                    DatePicker("Birthday", selection: $viewModel.user.birthdate, displayedComponents: .date)
                    
                    Button {
                        viewModel.saveChanges()
                    } label: {
                        Text("Save Changes")
                            .foregroundStyle(.brandPrimary)
                    }
                }
                
                Section(header: Text("Requests")) {
                    Toggle("Extra Napkins", isOn: $viewModel.user.extraNapkins)
                    
                    Toggle("Frequent Refills", isOn: $viewModel.user.frequentRefills)
                }
                .toggleStyle(SwitchToggleStyle(tint: .brandPrimary))
               
                    
            }
            .navigationTitle("🤵🏿 Accounnt")
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Button("Dismiss") {
                        focusedtextField = nil
                    }
                }
            }
        }
        .onAppear() {
            viewModel.retrieveUser()
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
        }
    }
}

#Preview {
    AccountView()
}
