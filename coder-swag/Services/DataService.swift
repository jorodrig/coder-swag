//
//  DataService.swift
//  coder-swag
//
//  Created by Joseph on 10/16/19.
//  Copyright © 2019 Coconut Tech LLc. All rights reserved.
//

import Foundation

class DataService {
    
    static let instance = DataService()  // This is a singleton.  THe variable 'instance' is a constant that is Static ie will only exist in memory once no matter how many times it is used.
    
    private let categories = [ Category(title: "SHIRTS", imageName: "shirts.png"),
                               Category(title: "HOODIES", imageName: "hoddies.png"),
                               Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")]
    
    
    func getCategories() -> [Category]{
        
        
        return categories
    }
    
 
    
}
