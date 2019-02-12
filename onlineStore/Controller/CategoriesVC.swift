//
//  ViewController.swift
//  onlineStore
//
//  Created by Rian Sanjaya Ng on 11/02/19.
//  Copyright © 2019 Rian Sanjaya Ng. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var categoryTable: UITableView!
    
    let categories: [Category] = DataService.instance.getCategories()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTable.delegate = self
        categoryTable.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = categoryTable.dequeueReusableCell(withIdentifier: "categoryCell", for: indexPath) as? CategoryCell {
//            cell.categoryImage.image = UIImage(named: categories[indexPath.row].imageName)
//            cell.categoryTitle.text = categories[indexPath.row].title
            let category = categories[indexPath.row]
            cell.updateCell(category: category)
            
            return cell
        } else {
            // return empty cell
            return CategoryCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataService.instance.getCategories()[indexPath.row]
        performSegue(withIdentifier: "productVC", sender: category)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let barBtn = UIBarButtonItem()
        barBtn.title = ""
        navigationItem.backBarButtonItem = barBtn
        // grab the destination segue and casting it to ProductVC
        if let productVC = segue.destination as? ProductVC {
            productVC.initProducts(category: sender as! Category)
        }
    }
}

