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
    
    func getCategories() -> [Category] {
        return categories
    }
}
