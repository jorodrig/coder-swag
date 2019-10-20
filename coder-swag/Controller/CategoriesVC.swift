//
//  ViewController.swift
//  coder-swag
//
//  Created by Joseph on 10/16/19.
//  Copyright © 2019 Coconut Tech LLc. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    

    @IBOutlet weak var categoryTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTable.dataSource = self
        categoryTable.delegate = self
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return DataService.instance.getCategories().count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell{
            let category = DataService.instance.getCategories()[indexPath.row]
            cell.updateViews(category: category)
            return cell
        }else{
            return CategoryCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath:IndexPath){
            let category = DataService.instance.getCategories()[indexPath.row]
            performSegue(withIdentifier: "ProductsVC", sender: category)   //force unwrap below in func prepare for seque
        }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productsVC = segue.destination as? ProductsVC {
            assert(sender as? Category != nil)  // for BUiLD Time - not for production - must be of type category or will crash App at build time
            productsVC.initProducts(category: sender as! Category)  //forced unwrap because we are certain it is a Category.  No need to use a Guard or if-let statement because this App demands this be a Category and nothing else
        }
    }
    }


