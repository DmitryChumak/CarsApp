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
    
    private let carsRepository = CarRepository()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //initialize carsCollectionView
        
        carsCollectionView.delegate = self
        carsCollectionView.dataSource = self
        
        let nib = UINib.init(nibName: CarCollectionViewCell.reuseIdentifier, bundle: nil)
        self.carsCollectionView.register(nib, forCellWithReuseIdentifier: CarCollectionViewCell.reuseIdentifier)
        
    }
    
}


// carsCollectionViewDataSource

extension MainViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return carsRepository.cars.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = carsCollectionView.dequeueReusableCell(withReuseIdentifier: CarCollectionViewCell.reuseIdentifier, for: indexPath) as! CarCollectionViewCell

        let car = carsRepository.cars[indexPath.row]
        cell.configure(with: car)

        return cell
    }

}

//carsCollectionViewDelegate

extension MainViewController: UICollectionViewDelegate {

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let detailVC = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        let car = carsRepository.cars[indexPath.row]
        detailVC.configure(for: car)
        
        self.navigationController?.pushViewController(detailVC, animated: true)
        
    }
    
}




