//
//  Category.swift
//  coder-swag
//
//  Created by Joseph on 10/16/19.
//  Copyright © 2019 Coconut Tech LLc. All rights reserved.
//

import Foundation

//This struct is for our data model
struct Category {
    private(set) public var title: String   //private for setting and public for retrieving
    private(set) public var imageName: String   //ditto
    
    init(title: String, imageName : String){
    self.title = title
    self.imageName = imageName
}

}
