//
//  Product.swift
//  coder-swag
//
//  Created by Joseph on 10/19/19.
//  Copyright © 2019 Coconut Tech LLc. All rights reserved.
//

import Foundation

struct Product {
    private(set) public var title: String
    private(set) public var price: String
    private(set) public var imageName: String
    
    init(title: String, price: String, imagename: String) {
        self.title = title
        self.price = price
        self.imageName = imagename
    }
}
