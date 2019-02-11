//
//  CategoyCell.swift
//  onlineStore
//
//  Created by Rian Sanjaya Ng on 11/02/19.
//  Copyright © 2019 Rian Sanjaya Ng. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func updateCell(category: Category) {
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }
}
