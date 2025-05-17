//
//  AppetizerModel.swift
//  Appetizers
//
//  Created by Диас Мухамедрахимов on 14.05.2025.
//

import Foundation

struct ShopModel: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let address: String
    let imageURL: String
    let products: [ProductModel]
}

struct ShopResponse: Decodable {
    let request: [ShopModel]
}

struct ProductModel: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
}
    
struct MockDataProducts {
    static let sampleProduct = ProductModel(
        id: 2007,
        name: "Platinum Wedding Band",
        description: "Comfort-fit platinum band, 4 mm",
        price: 1499.99,
        imageURL: "https://images.pexels.com/photos/2298741/pexels-photo-2298741.jpeg"
    )
    
    static let sampleProducts: [ProductModel] = [
            ProductModel(
                id: 1001,
                name: "Classic Tee",
                description: "100% cotton T-shirt",
                price: 19.99,
                imageURL: "https://images.pexels.com/photos/12039633/pexels-photo-12039633.jpeg?cs=srgb&dl=pexels-mockupbee-221716013-12039633.jpg&fm=jpg"
            ),
            ProductModel(
                id: 1002,
                name: "Slim Jeans",
                description: "Slim fit denim jeans",
                price: 49.99,
                imageURL: "https://images.pexels.com/photos/17515363/pexels-photo-17515363.jpeg?cs=srgb&dl=pexels-dmitriy-steinke-559643503-17515363.jpg&fm=jpg"
            ),
            ProductModel(
                id: 1003,
                name: "Leather Belt",
                description: "Genuine leather belt",
                price: 29.99,
                imageURL: "https://images.pexels.com/photos/31367060/pexels-photo-31367060.png?cs=srgb&dl=pexels-shivam-31367060.jpg&fm=jpg"
            ),
            ProductModel(
                id: 1004,
                name: "Canvas Sneakers",
                description: "Low-top canvas shoes",
                price: 59.99,
                imageURL: "https://images.pexels.com/photos/29945182/pexels-photo-29945182.jpeg?cs=srgb&dl=pexels-tahir-osman-29945182.jpg&fm=jpg"
            ),
            ProductModel(
                id: 1005,
                name: "Denim Jacket",
                description: "Light wash denim jacket",
                price: 89.99,
                imageURL: "https://images.pexels.com/photos/157738268/pexels-photo-157738268.jpeg?cs=srgb&dl=pexels-kaique-rocha-157738268.jpg&fm=jpg"
            ),
            ProductModel(
                id: 1006,
                name: "Chino Shorts",
                description: "Comfortable chino shorts",
                price: 34.99,
                imageURL: "https://images.pexels.com/photos/156674093/pexels-photo-156674093.jpeg?cs=srgb&dl=pexels-clarissa-williamson-156674093.jpg&fm=jpg"
            ),
            ProductModel(
                id: 1007,
                name: "Striped Shirt",
                description: "Breathable linen-blend shirt",
                price: 39.99,
                imageURL: "https://images.pexels.com/photos/1503341455253-b2e723bb3dbb?auto=compress&cs=tinysrgb&w=400"
            ),
            ProductModel(
                id: 1008,
                name: "Wool Scarf",
                description: "Soft wool scarf",
                price: 24.99,
                imageURL: "https://images.pexels.com/photos/1520975566153-d777876386a9_pexels-photo-1520975566153.jpeg?cs=srgb&dl=pexels-victor-freitas-1520975566153.jpg&fm=jpg"
            )
        ]
        // Источник: Pexels :contentReference[oaicite:0]{index=0}

        // MARK: ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––
        // 2) Вторая часть (7 товаров)
        static let sampleProducts2: [ProductModel] = [
            ProductModel(
                id: 1009,
                name: "Silk Tie",
                description: "100% silk tie",
                price: 22.99,
                imageURL: "https://images.pexels.com/photos/31654432/pexels-photo-31654432.jpeg?cs=srgb&dl=pexels-thecre8iveicon-31654432.jpg&fm=jpg"
            ),
            ProductModel(
                id: 1010,
                name: "Baseball Cap",
                description: "Adjustable cotton cap",
                price: 14.99,
                imageURL: "https://images.pexels.com/photos/1519681393784-d120267933ba.jpeg?cs=srgb&dl=pexels-artem-podrez-1519681393784.jpg&fm=jpg"
            ),
            ProductModel(
                id: 1011,
                name: "Sunglasses",
                description: "UV-protection sunglasses",
                price: 79.99,
                imageURL: "https://images.pexels.com/photos/1512496015851-a90fb38ba796.jpeg?cs=srgb&dl=pexels-james-wheeler-1512496015851.jpg&fm=jpg"
            ),
            ProductModel(
                id: 1012,
                name: "Leather Wallet",
                description: "Bifold leather wallet",
                price: 49.99,
                imageURL: "https://images.pexels.com/photos/1580587771525-78b9dba3b914.jpeg?cs=srgb&dl=pexels-anete-lusina-1580587771525.jpg&fm=jpg"
            ),
            ProductModel(
                id: 1013,
                name: "Sport Socks (3pk)",
                description: "Pack of 3 breathable socks",
                price: 12.99,
                imageURL: "https://images.pexels.com/photos/1529575289171-5f33662140f9.jpeg?cs=srgb&dl=pexels-vilmosk-1529575289171.jpg&fm=jpg"
            ),
            ProductModel(
                id: 1014,
                name: "Beanie Hat",
                description: "Warm acrylic beanie",
                price: 17.99,
                imageURL: "https://images.pexels.com/photos/1533743983669-94fae9dbf21c.jpeg?cs=srgb&dl=pexels-artem-podrez-1533743983669.jpg&fm=jpg"
            ),
            ProductModel(
                id: 1015,
                name: "Graphic Hoodie",
                description: "Cotton-blend pullover hoodie",
                price: 59.99,
                imageURL: "https://images.pexels.com/photos/1583095400838-0de7a95a75a7.jpeg?cs=srgb&dl=pexels-karolina-grabowska-1583095400838.jpg&fm=jpg"
            )
        ]
        // Источник: Pexels :contentReference[oaicite:1]{index=1}

        // MARK: ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––
        // 3) Расширенный набор (11 товаров)
        static let extendedProducts: [ProductModel] = [
            ProductModel(
                id: 1016,
                name: "Floral Dress",
                description: "Light chiffon floral dress",
                price: 69.99,
                imageURL: "https://images.pexels.com/photos/4075500/pexels-photo-4075500.png?cs=srgb&dl=pexels-spring-toan-323886-4075500.jpg&fm=jpg"
            ), // :contentReference[oaicite:2]{index=2}
            ProductModel(
                id: 1017,
                name: "Denim Overalls",
                description: "Casual denim overalls",
                price: 79.99,
                imageURL: "https://images.pexels.com/photos/27133412/pexels-photo-27133412.jpeg?cs=srgb&dl=pexels-amir-abbaspoor-748889438-27133412.jpg&fm=jpg"
            ), // :contentReference[oaicite:3]{index=3}
            ProductModel(
                id: 1018,
                name: "Trench Coat",
                description: "Classic beige trench coat",
                price: 119.99,
                imageURL: "https://images.pexels.com/photos/428340/pexels-photo-428340.jpeg?cs=srgb&dl=pexels-fauxels-428340.jpg&fm=jpg"
            ), // пример URL с Pexels
            ProductModel(
                id: 1019,
                name: "Polo Shirt",
                description: "Breathable cotton polo shirt",
                price: 29.99,
                imageURL: "https://images.pexels.com/photos/845434/pexels-photo-845434.jpeg?cs=srgb&dl=pexels-tima-miroshnichenko-845434.jpg&fm=jpg"
            ), // пример URL с Pexels
            ProductModel(
                id: 1020,
                name: "Cargo Pants",
                description: "Utility cargo pants",
                price: 54.99,
                imageURL: "https://images.pexels.com/photos/2983464/pexels-photo-2983464.jpeg?cs=srgb&dl=pexels-ivan-samkov-2983464.jpg&fm=jpg"
            ), // пример URL с Pexels
            ProductModel(
                id: 1021,
                name: "Tank Top",
                description: "Lightweight tank top",
                price: 19.99,
                imageURL: "https://images.pexels.com/photos/428340/pexels-photo-428340.jpeg?cs=srgb&dl=pexels-fauxels-428340.jpg&fm=jpg"
            ), // пример URL
            ProductModel(
                id: 1022,
                name: "Leather Boots",
                description: "High-quality leather boots",
                price: 129.99,
                imageURL: "https://images.pexels.com/photos/775219/pexels-photo-775219.jpeg?cs=srgb&dl=pexels-pixabay-775219.jpg&fm=jpg"
            ), // пример URL
            ProductModel(
                id: 1023,
                name: "Running Shoes",
                description: "Lightweight running trainers",
                price: 89.99,
                imageURL: "https://images.pexels.com/photos/190819/pexels-photo-190819.jpeg?cs=srgb&dl=pexels-gele-190819.jpg&fm=jpg"
            ), // пример URL
            ProductModel(
                id: 1024,
                name: "Messenger Bag",
                description: "Canvas messenger bag",
                price: 49.99,
                imageURL: "https://images.pexels.com/photos/298864/pexels-photo-298864.jpeg?cs=srgb&dl=pexels-thomas-x-298864.jpg&fm=jpg"
            ), // пример URL
            ProductModel(
                id: 1025,
                name: "Leather Gloves",
                description: "Warm leather gloves",
                price: 39.99,
                imageURL: "https://images.pexels.com/photos/3760747/pexels-photo-3760747.jpeg?cs=srgb&dl=pexels-cottonbro-studio-3760747.jpg&fm=jpg"
            ), // пример URL
            ProductModel(
                id: 1026,
                name: "Thermal Leggings",
                description: "Stretchable thermal leggings",
                price: 34.99,
                imageURL: "https://images.pexels.com/photos/4219231/pexels-photo-4219231.jpeg?cs=srgb&dl=pexels-cottonbro-studio-4219231.jpg&fm=jpg"
            )  // пример URL
        ]
        // Источник: Pexels

        // MARK: ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––
        // 4) Третья часть (9 товаров)
        static let sampleProducts3: [ProductModel] = [
            ProductModel(
                id: 1027,
                name: "Canvas Tote",
                description: "Everyday canvas tote bag",
                price: 24.99,
                imageURL: "https://images.pexels.com/photos/3683073/pexels-photo-3683073.jpeg?cs=srgb&dl=pexels-juan-pablo-serrano-3683073.jpg&fm=jpg"
            ),
            ProductModel(
                id: 1028,
                name: "Dress Shoes",
                description: "Classic oxford dress shoes",
                price: 99.99,
                imageURL: "https://images.pexels.com/photos/1562618/pexels-photo-1562618.jpeg?cs=srgb&dl=pexels-adrien-olichon-1562618.jpg&fm=jpg"
            ),
            ProductModel(
                id: 1029,
                name: "Sports Watch",
                description: "Waterproof sports watch",
                price: 149.99,
                imageURL: "https://images.pexels.com/photos/267394/pexels-photo-267394.jpeg?cs=srgb&dl=pexels-pixabay-267394.jpg&fm=jpg"
            ),
            ProductModel(
                id: 1030,
                name: "Beaded Bracelet",
                description: "Handmade beaded bracelet",
                price: 19.99,
                imageURL: "https://images.pexels.com/photos/1609641/pexels-photo-1609641.jpeg?cs=srgb&dl=pexels-karolina-grabowska-1609641.jpg&fm=jpg"
            ),
            ProductModel(
                id: 1031,
                name: "Gold Necklace",
                description: "Elegant gold-plated necklace",
                price: 89.99,
                imageURL: "https://images.pexels.com/photos/1582630/pexels-photo-1582630.jpeg?cs=srgb&dl=pexels-anete-lusina-1582630.jpg&fm=jpg"
            ),
            ProductModel(
                id: 1032,
                name: "Silk Scarf",
                description: "Soft silk scarf with print",
                price: 49.99,
                imageURL: "https://images.pexels.com/photos/3748871/pexels-photo-3748871.jpeg?cs=srgb&dl=pexels-nataliya-vaitkevich-3748871.jpg&fm=jpg"
            ),
            ProductModel(
                id: 1033,
                name: "Baseball Jersey",
                description: "Official team baseball jersey",
                price: 59.99,
                imageURL: "https://images.pexels.com/photos/2529147/pexels-photo-2529147.jpeg?cs=srgb&dl=pexels-cottonbro-studio-2529147.jpg&fm=jpg"
            ),
            ProductModel(
                id: 1034,
                name: "Swim Trunks",
                description: "Quick-dry swim shorts",
                price: 29.99,
                imageURL: "https://images.pexels.com/photos/3757007/pexels-photo-3757007.jpeg?cs=srgb&dl=pexels-cottonbro-studio-3757007.jpg&fm=jpg"
            ),
            ProductModel(
                id: 1035,
                name: "Winter Parka",
                description: "Down-filled winter parka",
                price: 199.99,
                imageURL: "https://images.pexels.com/photos/7136239/pexels-photo-7136239.jpeg?cs=srgb&dl=pexels-luis-gomes-7136239.jpg&fm=jpg"
            )
        ]
    static let jewelryProducts: [ProductModel] = [
            ProductModel(
                id: 2001,
                name: "Diamond Solitaire Ring",
                description: "18K white gold ring set with a 0.5 ct diamond",
                price: 1299.99,
                imageURL: "https://images.pexels.com/photos/1927260/pexels-photo-1927260.jpeg"
            ),
            ProductModel(
                id: 2002,
                name: "Pearl Strand Necklace",
                description: "Cultured pearl necklace, 45 cm",
                price: 899.50,
                imageURL: "https://images.pexels.com/photos/4532678/pexels-photo-4532678.jpeg"
            ),
            ProductModel(
                id: 2003,
                name: "Gold Bangle Bracelet",
                description: "14K yellow gold bangle, Ø 6.5 cm",
                price: 499.99,
                imageURL: "https://images.pexels.com/photos/5079840/pexels-photo-5079840.jpeg"
            ),
            ProductModel(
                id: 2004,
                name: "Sapphire Pendant",
                description: "18K rose gold pendant with 1.2 ct sapphire",
                price: 749.00,
                imageURL: "https://images.pexels.com/photos/3584518/pexels-photo-3584518.jpeg"
            ),
            ProductModel(
                id: 2005,
                name: "Emerald Tennis Bracelet",
                description: "Sterling silver with emerald cuts",
                price: 1099.00,
                imageURL: "https://images.pexels.com/photos/15684101/pexels-photo-15684101.jpeg"
            ),
            ProductModel(
                id: 2006,
                name: "Rose Gold Hoop Earrings",
                description: "18K rose gold hoops, 30 mm",
                price: 399.99,
                imageURL: "https://images.pexels.com/photos/10845718/pexels-photo-10845718.jpeg"
            ),
            ProductModel(
                id: 2007,
                name: "Platinum Wedding Band",
                description: "Comfort-fit platinum band, 4 mm",
                price: 1499.99,
                imageURL: "https://images.pexels.com/photos/2298741/pexels-photo-2298741.jpeg"
            ),
            ProductModel(
                id: 2008,
                name: "Luxury Chronograph Watch",
                description: "Stainless steel case, leather strap",
                price: 2199.00,
                imageURL: "https://images.pexels.com/photos/190819/pexels-photo-190819.jpeg"
            )
        ]
}



struct MockDataShops {
    static let sampleShop = ShopModel(id: 0001, name: "Zara", description: "Spanish fashion chain offering on-trend house-brand clothing, shoes & accessories.", address: "1st floor, 12", imageURL: "zara", products: MockDataProducts.sampleProducts)
    static let sampleShop1 = ShopModel(id: 0002, name: "Bershka", description: "Spanish fashion chain offering on-trend house-brand clothing, shoes & accessories.", address: "1st floor, 30", imageURL: "bershka", products: MockDataProducts.sampleProducts2)
    static let sampleShop2 = ShopModel(id: 0003, name: "H&M", description: "Chain retailer supplying on-trend clothing, swimwear, accessories & shoes.", address: "1st floor, 21", imageURL: "h&m", products: MockDataProducts.sampleProducts3)
    static let sampleShop3 = ShopModel(id: 0004, name: "Pull & Bear", description: "Pull&Bear is a Spanish clothing and accessories retailer based in Narón, A Coruña, Galicia, founded in 1991.", address: "1st floor, 17", imageURL: "pull", products: MockDataProducts.extendedProducts)
    static let sampleShop4 = ShopModel(id: 0005, name: "Pandora", description: "Pandora A/S is a Danish jewelry manufacturer and retailer founded in 1982 by Per Enevoldsen. The company started as a family-run jewelry shop in Copenhagen.", address: "1st floor, 7", imageURL: "pandora", products: MockDataProducts.jewelryProducts)
    static let sampleShop5 = ShopModel(id: 0006, name: "Intertop", description: "Spanish fashion chain offering on-trend house-brand clothing, shoes & accessories.", address: "2nd floor, 12", imageURL: "intertop", products: MockDataProducts.sampleProducts2)
    static let sampleShop6 = ShopModel(id: 0007, name: "Billion", description: "Billion.co — больше, чем одежда. Мы создаем стиль для тех, кто ценит качество, комфорт и уверенность в каждом движении", address: "2nd floor, 30", imageURL: "billion", products: MockDataProducts.extendedProducts)
    
    
    static var appetizers = [sampleShop, sampleShop1, sampleShop2, sampleShop3, sampleShop4, sampleShop5, sampleShop6]
}
