//
//  DataService.swift
//  onlineStore
//
//  Created by Rian Sanjaya Ng on 11/02/19.
//  Copyright © 2019 Rian Sanjaya Ng. All rights reserved.
//

import Foundation

class DataService {
    // create a singleton
    // create a constant instance of a class DataService,
    // static make it there is only one copy in memory
    static let instance = DataService()
    
    // pretend data source from server
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    private let hats = [
        Product(title: "Developers Logo Graphic Beanie", price: "$18", imageName: "hat01.png"),
        Product(title: "Developers Logo Hat Black", price: "$22", imageName: "hat02.png"),
        Product(title: "Developers Logo Hat White", price: "$22", imageName: "hat03.png"),
        Product(title: "Developers Logo Snapback", price: "$20", imageName: "hat04.png")
    ]
    
    private let hoodies = [
        Product(title: "Developers Logo Hoodie Grey", price: "$32", imageName: "hoodie01.png"),
        Product(title: "Developers Logo Hoodie Red", price: "$32", imageName: "hoodie02.png"),
        Product(title: "Developers Hoodie Grey", price: "$32", imageName: "hoodie03.png"),
        Product(title: "Developers Hoodie Black", price: "$32", imageName: "hoodie04.png")
    ]
    
    private let shirts = [
        Product(title: "Developers Logo Shirt Black", price: "$18", imageName: "shirt01.png"),
        Product(title: "Developers Logo Shirt Light Black", price: "$18", imageName: "shirt02.png"),
        Product(title: "Developers Logo Shirt Red", price: "$18", imageName: "shirt03.png"),
        Product(title: "Hustle Delegate Grey", price: "$18", imageName: "shirt04.png"),
        Product(title: "Kickflip Studios Black", price: "$18", imageName: "shirt05.png")
    ]
    
    private let digitalGoods = [Product]()
    
    func getCategories() -> [Category] {
        return categories
    }
    
    func getProducts(forCategoryTitle title: String) -> [Product] {
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HOODIES":
            return getHoodies()
        case "HATS":
            return getHats()
        default:
            return getDigitalGoods()
        }
    }
    
    func getHats() -> [Product] {
        return hats
    }
    
    func getHoodies() -> [Product] {
        return hoodies
    }
    
    func getShirts() -> [Product] {
        return shirts
    }
    
    func getDigitalGoods() -> [Product] {
        return digitalGoods
    }
}
