//
//  UICollectionView+Extension.swift
//  CarsApp
//
//  Created by Dmitry on 3/23/19.
//  Copyright © 2019 Dmitry. All rights reserved.
//

import UIKit

extension UICollectionViewCell {
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}
