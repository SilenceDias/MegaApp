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
                imageURL: "https://fm669.us/cdn/shop/files/Classic-Black-Front_800x.jpg?v=1686542891"
            ),
            ProductModel(
                id: 1002,
                name: "Slim Jeans",
                description: "Slim fit denim jeans",
                price: 49.99,
                imageURL: "https://duer.ca/cdn/shop/files/MFLS5021-PERFORMANCE-DENIM-SLIM-TIDAL_3140-FT3.jpg?v=1743715699&width=1200"
            ),
            ProductModel(
                id: 1003,
                name: "Leather Belt",
                description: "Genuine leather belt",
                price: 29.99,
                imageURL: "https://m.media-amazon.com/images/I/91Wm4z7oeRL._AC_SL1500_.jpg"
            ),
            ProductModel(
                id: 1004,
                name: "Canvas Sneakers",
                description: "Low-top canvas shoes",
                price: 59.99,
                imageURL: "https://i.ebayimg.com/images/g/p8gAAOSw6Hdf05IX/s-l1200.jpg"
            ),
            ProductModel(
                id: 1005,
                name: "Denim Jacket",
                description: "Light wash denim jacket",
                price: 89.99,
                imageURL: "https://assets.digitalcontent.marksandspencer.app/images/w_1024,q_auto,f_auto/SD_01_T49_4385_T5_X_EC_90/Denim-Jacket-with-Stretch"
            ),
            ProductModel(
                id: 1006,
                name: "Chino Shorts",
                description: "Comfortable chino shorts",
                price: 34.99,
                imageURL: "https://cdni.llbean.net/is/image/wim/521701_35336_46?hei=1095&wid=950&resMode=sharp2&defaultImage=llbprod/521701_0_44"
            ),
            ProductModel(
                id: 1007,
                name: "Striped Shirt",
                description: "Breathable linen-blend shirt",
                price: 39.99,
                imageURL: "https://cdn-images.farfetch-contents.com/24/05/25/74/24052574_54858046_1000.jpg"
            ),
            ProductModel(
                id: 1008,
                name: "Wool Scarf",
                description: "Soft wool scarf",
                price: 24.99,
                imageURL: "https://www.spierandmackay.com/files/catalog/PRODUCT_IMAGES/Spier&Mackay-JSBH2110-3-Taupe%20-%20Wool%20Scarf%20(3).jpg"
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
                imageURL: "https://www.bows-n-ties.com/32542-xlarge_default/Solid-Dark-Blue-Silk-Tie.jpg"
            ),
            ProductModel(
                id: 1010,
                name: "Baseball Cap",
                description: "Adjustable cotton cap",
                price: 14.99,
                imageURL: "https://store.moma.org/cdn/shop/files/3a2b0b12-bde3-4a63-bba2-b561dbd7de29_5fa67989-c4a0-4bea-a74b-fb25ed894895.jpg?v=1710971142"
            ),
            ProductModel(
                id: 1011,
                name: "Sunglasses",
                description: "UV-protection sunglasses",
                price: 79.99,
                imageURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwsqiXstMeH7C77PJEuCwMtjmsnxPJMeOmyzf-HDYe-gH3RJAaQfu3AgYowOJavejByKY&usqp=CAU"
            ),
            ProductModel(
                id: 1012,
                name: "Leather Wallet",
                description: "Bifold leather wallet",
                price: 49.99,
                imageURL: "https://www.lostdutchmanleather.com/cdn/shop/files/the-dutchman-handmade-leather-wallet-128087.jpg?v=1714441353&width=2048"
            ),
            ProductModel(
                id: 1013,
                name: "Sport Socks (3pk)",
                description: "Pack of 3 breathable socks",
                price: 12.99,
                imageURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRS5tBgTqChz9rooFHA1VlUQ42ZUj7WJ0hB8w&s"
            ),
            ProductModel(
                id: 1014,
                name: "Beanie Hat",
                description: "Warm acrylic beanie",
                price: 17.99,
                imageURL: "https://www.thehempshop.co.uk/media/catalog/product/cache/53255479565ca60bd805cf968bff78ae/h/e/hemp-beanie-grey_3.jpg.mst.webp"
            ),
            ProductModel(
                id: 1015,
                name: "Graphic Hoodie",
                description: "Cotton-blend pullover hoodie",
                price: 59.99,
                imageURL: "https://cdn.shopify.com/s/files/1/0156/6146/files/GFXGrungeRDEHoodieGSBlackA7A1H-BB2J-0217.jpg?v=1733408211"
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
                imageURL: "https://petalandpup.com/cdn/shop/products/petal-and-pup-usa-dresses-aminah-puff-sleeve-dress-blue-floral-33537758789809.jpg?v=1746571683&width=600"
            ), // :contentReference[oaicite:2]{index=2}
            ProductModel(
                id: 1017,
                name: "Denim Overalls",
                description: "Casual denim overalls",
                price: 79.99,
                imageURL: "https://www.alexmill.com/cdn/shop/files/WX063-2952-PARIS-MEDIUM-WASH-30660_1400x1857_crop_center.jpg?v=1705518802"
            ), // :contentReference[oaicite:3]{index=3}
            ProductModel(
                id: 1018,
                name: "Trench Coat",
                description: "Classic beige trench coat",
                price: 119.99,
                imageURL: "https://www.alamodelabel.in/cdn/shop/files/WhatsAppImage2023-10-09at18.00.35_2bbad95c_600x.jpg?v=1735462280"
            ), // пример URL с Pexels
            ProductModel(
                id: 1019,
                name: "Polo Shirt",
                description: "Breathable cotton polo shirt",
                price: 29.99,
                imageURL: "https://dimg.dillards.com/is/image/DillardsZoom/main/polo-ralph-lauren-classic-fit-soft-touch-short-sleeve-polo-shirt/00000001_zi_polo_black05092529.jpg"
            ), // пример URL с Pexels
            ProductModel(
                id: 1020,
                name: "Cargo Pants",
                description: "Utility cargo pants",
                price: 54.99,
                imageURL: "https://www.passenger-clothing.com/cdn/shop/files/E3SCgI_Fa79TZwjVmpcBGHQ4I815cQRNfsZB-HkvZE4.jpg?v=1715692995&width=1946"
            ), // пример URL с Pexels
            ProductModel(
                id: 1021,
                name: "Tank Top",
                description: "Lightweight tank top",
                price: 19.99,
                imageURL: "https://static.massimodutti.net/assets/public/4fb2/e19c/76ed4ae1b088/d7a7b509b4ec/01419290250-o1/01419290250-o1.jpg?ts=1743606443817"
            ), // пример URL
            ProductModel(
                id: 1022,
                name: "Leather Boots",
                description: "High-quality leather boots",
                price: 129.99,
                imageURL: "https://shoethebear.com/cdn/shop/files/Stellan_Lace_Up_Boot_Leather-Boots-STB2307-135_TAN.jpg?v=1683617654"
            ), // пример URL
            ProductModel(
                id: 1023,
                name: "Running Shoes",
                description: "Lightweight running trainers",
                price: 89.99,
                imageURL: "https://cdn.thewirecutter.com/wp-content/media/2024/05/runningshoesforyou-2048px-2254.jpg?auto=webp&quality=75&width=1024"
            ), // пример URL
            ProductModel(
                id: 1024,
                name: "Messenger Bag",
                description: "Canvas messenger bag",
                price: 49.99,
                imageURL: "https://m.media-amazon.com/images/I/81EPTX8VhwL.jpg"
            ), // пример URL
            ProductModel(
                id: 1025,
                name: "Leather Gloves",
                description: "Warm leather gloves",
                price: 39.99,
                imageURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMW4Y4KwRbQaysJb8upzpwTLylyoloAPCtnw&s"
            ), // пример URL
            ProductModel(
                id: 1026,
                name: "Thermal Leggings",
                description: "Stretchable thermal leggings",
                price: 34.99,
                imageURL: "https://uk.ryderwear.com/cdn/shop/products/embody-thermal-leggings-black-clothing-ryderwear-348545_1080x.jpg?v=1685333478"
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
                imageURL: "https://m.media-amazon.com/images/I/71ebnB4aK7L.jpg"
            ),
            ProductModel(
                id: 1028,
                name: "Dress Shoes",
                description: "Classic oxford dress shoes",
                price: 99.99,
                imageURL: "https://thursdayboots.com/cdn/shop/products/1024x1024-Men-Executive-Black-061821-3.4.jpg?v=1624034468"
            ),
            ProductModel(
                id: 1029,
                name: "Sports Watch",
                description: "Waterproof sports watch",
                price: 149.99,
                imageURL: "https://v2awatch.com/cdn/shop/products/1_0c71ccc3-fc50-4d53-9c2d-ad0b7a193912.jpg?v=1747050788&width=600"
            ),
            ProductModel(
                id: 1030,
                name: "Beaded Bracelet",
                description: "Handmade beaded bracelet",
                price: 19.99,
                imageURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQa3nuZYKrmJDc7dvIzEmcnWaagfZtIJ2AHzA&s"
            ),
            ProductModel(
                id: 1031,
                name: "Gold Necklace",
                description: "Elegant gold-plated necklace",
                price: 89.99,
                imageURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTa0CmUXZQTAV0s0nF9GMK9nmnDvDke2qdZSA&s"
            ),
            ProductModel(
                id: 1032,
                name: "Silk Scarf",
                description: "Soft silk scarf with print",
                price: 49.99,
                imageURL: "https://www.cinabre-paris.com/18792/blue-silk-scarf-90-les-marquises-tikiti.jpg"
            ),
            ProductModel(
                id: 1033,
                name: "Baseball Jersey",
                description: "Official team baseball jersey",
                price: 59.99,
                imageURL: "https://static.augustasportswear.com/product/228230_ABRD_front.jpg?hei=350&wid=320"
            ),
            ProductModel(
                id: 1034,
                name: "Swim Trunks",
                description: "Quick-dry swim shorts",
                price: 29.99,
                imageURL: "https://swimzip.com/cdn/shop/products/image_08acc9fd-89ce-462f-b449-91623d672676.png?v=1745945343"
            ),
            ProductModel(
                id: 1035,
                name: "Winter Parka",
                description: "Down-filled winter parka",
                price: 199.99,
                imageURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_aiEuMYCMP7a-kqQspzEAQ0IzBMDNodlaGg&s"
            )
        ]
    static let jewelryProducts: [ProductModel] = [
            ProductModel(
                id: 2001,
                name: "Diamond Solitaire Ring",
                description: "18K white gold ring set with a 0.5 ct diamond",
                price: 1299.99,
                imageURL: "https://www.kjj.co.uk/cdn/shop/files/IMG-3493.jpg?v=1721405010"
            ),
            ProductModel(
                id: 2002,
                name: "Pearl Strand Necklace",
                description: "Cultured pearl necklace, 45 cm",
                price: 899.50,
                imageURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRerKVaZ19nR4hcdH3tByEI0fZZB9D8oU5qjA&s"
            ),
            ProductModel(
                id: 2003,
                name: "Gold Bangle Bracelet",
                description: "14K yellow gold bangle, Ø 6.5 cm",
                price: 499.99,
                imageURL: "https://www.jared.com/productimages/processed/V-890197407_2_800.jpg?pristine=true"
            ),
            ProductModel(
                id: 2004,
                name: "Sapphire Pendant",
                description: "18K rose gold pendant with 1.2 ct sapphire",
                price: 749.00,
                imageURL: "https://image.brilliantearth.com/media/product_images/81/BE4S85_white_top.jpg"
            ),
            ProductModel(
                id: 2005,
                name: "Emerald Tennis Bracelet",
                description: "Sterling silver with emerald cuts",
                price: 1099.00,
                imageURL: "https://kinnstudio.com/cdn/shop/files/kinn_14k_gold_fine_jewerly_sirena_llifestyle.jpg?v=1706724524&width=1463"
            ),
            ProductModel(
                id: 2006,
                name: "Rose Gold Hoop Earrings",
                description: "18K rose gold hoops, 30 mm",
                price: 399.99,
                imageURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVyRh19ZQ0wwxFinHxj_6w2YVWe-IgjYnF6A&s"
            ),
            ProductModel(
                id: 2007,
                name: "Platinum Wedding Band",
                description: "Comfort-fit platinum band, 4 mm",
                price: 1499.99,
                imageURL: "https://www.damiani.com/media/catalog/product/2/0/20035855_c_1.jpg"
            ),
            ProductModel(
                id: 2008,
                name: "Luxury Chronograph Watch",
                description: "Stainless steel case, leather strap",
                price: 2199.00,
                imageURL: "https://images.watchfinder.co.uk/images/watchfinderimages/media/articles/0/2024/02/19/Rolex-Daytona.jpg"
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
