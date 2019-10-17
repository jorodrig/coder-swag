//
//  CategoryCell.swift
//  coder-swag
//
//  Created by Joseph on 10/16/19.
//  Copyright © 2019 Coconut Tech LLc. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    override func awakeFromNib(){
        super.awakeFromNib()
        
    }
    
    
    func updateViews(category: Category){
        
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
        
    }
}
