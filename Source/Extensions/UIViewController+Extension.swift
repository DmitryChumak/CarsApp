//
//  ViewController+Extension.swift
//  CarsApp
//
//  Created by Dmitry on 3/23/19.
//  Copyright © 2019 Dmitry. All rights reserved.
//

import UIKit

extension UIViewController {
    static var storyboardID: String {
        return String(describing: self)
    }
}

