//
//  ProductsTableTableViewController.swift
//  GoodAsOldPhones
//
//  Created by Vijeta Gupta on 8/19/16.
//  Copyright © 2016 Vijeta Gupta. All rights reserved.
//

import UIKit

class ProductsTableTableViewController: UITableViewController {
    
    var products: [Product]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let product1 = Product()
        let product2 = Product()
        let product3 = Product()
        let product4 = Product()
        
        
      product1.name = "1947 Phn"
    product1.cellImage = "phn1"
        product1.productImage = "phn1"
        
        
        product2.name = "1957 Phn"
        product2.cellImage = "phn2"
        product2.productImage = "phn2"
        
        product3.name = "1967 Phn"
        product3.cellImage = "phn3"
        product3.productImage = "phn3"
    
        product4.name = "1977 Phn"
        product4.cellImage = "phn4"
        product4.productImage = "phn4"
        
        products = [product1, product2, product3, product4]

        
    }
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        if let p = products {
            return p.count
        }
        return 0
        
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ProductCell", forIndexPath: indexPath)
//        cell.textLabel?.text = "Different Phones"
    
        let product = products?[indexPath.row]
        if let p = product {
            cell.textLabel?.text = p.name
            if let cImage = p.cellImage {
            cell.imageView?.image = UIImage(named : cImage)
            }
            
        }
        
        return cell
    }
   
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "ShowProduct") {
            let productVC = segue.destinationViewController as? ProductViewController
            let cell = sender as? UITableViewCell
            if let c = cell {
                let indexPath = tableView.indexPathForCell(c)
                if let i = indexPath {
                
                    let product = products?[i.row]
                    productVC?.product = product
                    
                }
            }
            
        }
    }

}
