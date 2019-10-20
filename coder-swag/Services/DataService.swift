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
    
    private let hats = [Product(title: "DevSlops Hat Beanie", price: "$18", imagename: "hats01.png"),
                        Product(title: "DevSlops Hat Black", price: "$18", imagename: "hats02.png"),
                        Product(title: "DevSlops Hat White", price: "$18", imagename: "hats03.png"),
                        Product(title: "DevSlops Logo Snapback", price: "$18", imagename: "hats04.png")
    ]
    
    private let hoddies = [Product(title: "Devslopes Logo Hoddie Gray", price: "$32", imagename: "hoddie01.png"),
        Product(title: "Devslopes Logo Hoddie Red", price: "$32", imagename: "hoddie02.png"),
        Product(title: "Devslopes Logo Hoddie Gray", price: "$32", imagename: "hoddie03.png"),
        Product(title: "Devslopes Logo Hoddie Black", price: "$32", imagename: "hoddie04.png")
    ]
    
    private let shirts = [Product(title: "Devslopes Logo Shirt Black", price: "18", imagename: "shirt01.png"),
                          Product(title: "Devslopes Logo Shirt Light Gray", price: "19", imagename: "shirt02.png"),
        Product(title: "Devslopes Logo Shirt Red", price: "18", imagename: "shirt03.png"),
        Product(title: "Hustle Delegate Gray", price: "18", imagename: "shirt04.png"),
        Product(title: "Kickflip Studios", price: "18", imagename: "shirt04.png")
    ]
    
    private let digitalGoods = [Product]()
    
    
    //Getter functions
    func getProducts(forCategoryTitle title:String) -> [Product]{
        switch title {
        case "SHIRTS":
            return  getShirts()
        case "HATS":
            return getHats()
        case "HODDIES":
            return getHoddies()
        case "DIGITAL":
            return getDigitalGoods()
        default:
           return getShirts()
        }
        
    }
    
    func getHats() -> [Product]{
        return hats
    }
    
    func getHoddies() -> [Product]{
        
        return hoddies
    }
    
    func getShirts() ->[Product]{
        
        return shirts
    }
    
    func getDigitalGoods() -> [Product] {
        return digitalGoods
    
    }
    
    
    func getCategories() -> [Category]{
        
        
        return categories
    }
    
 
    
}
