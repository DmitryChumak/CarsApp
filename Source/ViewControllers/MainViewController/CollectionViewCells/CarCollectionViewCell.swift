//
//  CarCollectionViewCell.swift
//  CarsApp
//
//  Created by Dmitry on 3/22/19.
//  Copyright © 2019 Dmitry. All rights reserved.
//

import UIKit

class CarCollectionViewCell: UICollectionViewCell {

    @IBOutlet var image: UIImageView!
    @IBOutlet var productionYear: UILabel!
    @IBOutlet var model: UILabel!
    @IBOutlet var color: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
