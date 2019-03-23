//
//  CarCollectionViewCell.swift
//  CarsApp
//
//  Created by Dmitry on 3/22/19.
//  Copyright © 2019 Dmitry. All rights reserved.
//

import UIKit

class CarCollectionViewCell: UICollectionViewCell {

    @IBOutlet private var imageImageView: UIImageView!
    @IBOutlet private var productionYearLabel: UILabel!
    @IBOutlet private var modelLabel: UILabel!
    @IBOutlet private var colorLabel: UILabel!
    
    func configure(with car: Car) {
        colorLabel?.text = car.color
        imageImageView?.image  = UIImage(named: car.image)
        modelLabel.text = car.model
        productionYearLabel.text = String(car.productionYear)
    }
}



