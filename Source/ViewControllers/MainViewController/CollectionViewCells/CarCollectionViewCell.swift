//
//  CarCollectionViewCell.swift
//  CarsApp
//
//  Created by Dmitry on 3/22/19.
//  Copyright © 2019 Dmitry. All rights reserved.
//

import UIKit

class CarCollectionViewCell: UICollectionViewCell {

    @IBOutlet private var image: UIImageView!
    @IBOutlet private var productionYear: UILabel!
    @IBOutlet private var model: UILabel!
    @IBOutlet private var color: UILabel!
    
    func configure(with car: Car) {
        color?.text = car.color
        image?.image  = UIImage(named: car.image)
        model.text = car.model
        productionYear.text = String(car.productionYear)
    }
}


extension CarCollectionViewCell {
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}
