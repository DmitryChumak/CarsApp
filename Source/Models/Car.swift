//
//  Car.swift
//  CarsApp
//
//  Created by Dmitry on 3/22/19.
//  Copyright © 2019 Dmitry. All rights reserved.
//

import Foundation


class Car {
    var model: String
    var productionYear: Int
    var color: String
    var image: String?
    init(_ model: String, _ productionYear: Int, _ color: String, _ image: String?) {
        self.model = model
        self.productionYear = productionYear
        self.color = color
        self.image = image
    }
    
}
