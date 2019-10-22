//
//  ProductsVC.swift
//  coder-swag
//
//  Created by Joseph on 10/19/19.
//  Copyright © 2019 Coconut Tech LLc. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    
    @IBOutlet weak var productsCollection: UICollectionView!
    
    
    private(set) public var products = [Product]()   // create empty Products array at start
    
    override func viewDidLoad() {
        super.viewDidLoad()
        productsCollection.dataSource = self //must do this for the protocols
        
        productsCollection.delegate = self   //must do this for the protocols
        
        
        // Do any additional setup after loading the view.
    }
    
    func initProducts(category: Category) {
        products = DataService.instance.getProducts(forCategoryTitle: category.title)
        navigationItem.title = category.title
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell{
            
            let product = products[indexPath.row]
            cell.updateViews(product: product)
            return cell
        }else {
            return ProductCell()
        }
    }
}
