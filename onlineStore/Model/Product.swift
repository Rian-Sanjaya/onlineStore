//
//  Product.swift
//  onlineStore
//
//  Created by Rian Sanjaya Ng on 12/02/19.
//  Copyright © 2019 Rian Sanjaya Ng. All rights reserved.
//

import Foundation

struct Product {
    private(set) public var title: String
    private(set) public var price: String
    private(set) public var imageName: String
    
    init(title: String, price: String, imageName: String) {
        self.price = price
        self.title = title
        self.imageName = imageName
    }
}
