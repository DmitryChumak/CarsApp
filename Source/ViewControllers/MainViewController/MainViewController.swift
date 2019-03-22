//
//  ViewController.swift
//  CarsApp
//
//  Created by Dmitry on 3/22/19.
//  Copyright © 2019 Dmitry. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet private var carsCollectionView: UICollectionView!
    
    private var carsRepository = CarRepository()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //initialize carsCollectionView
        
        carsCollectionView.delegate = self
        carsCollectionView.dataSource = self
        
        let nib = UINib.init(nibName: "CarCollectionViewCell", bundle: nil)
        self.carsCollectionView.register(nib, forCellWithReuseIdentifier: "CarCell")
        
    }
    
}


// carsCollectionViewDataSource

extension MainViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return carsRepository.cars.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = carsCollectionView.dequeueReusableCell(withReuseIdentifier: "CarCell", for: indexPath) as! CarCollectionViewCell

        cell.color?.text = carsRepository.cars[indexPath.row].color
        cell.image?.image  = UIImage(named: carsRepository.cars[indexPath.row].image!)
        cell.model.text = carsRepository.cars[indexPath.row].model
        cell.productionYear.text = String(carsRepository.cars[indexPath.row].productionYear)
        
        return cell
    }


}

//carsCollectionViewDelegate

extension MainViewController: UICollectionViewDelegate {

}




