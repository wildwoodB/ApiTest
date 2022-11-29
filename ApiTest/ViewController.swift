//
//  ViewController.swift
//  ApiTest
//
//  Created by Админ on 29.11.2022.
//

import UIKit
import Kingfisher

class ViewController: UIViewController {
    
    
    @IBOutlet weak var dishName: UILabel!
    
    var dish = [Dish]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateDisplay()
        dishName.text = "Блюдо "
    }
    
    
    func updateDisplay(){
        
        NetworkService.shared.fetchRandomDishes() { [weak self] result in
            switch result {
            case .success(let data):
                self?.dish = data
                print("Наш массив: \(self?.dish)")
                //self?.collectionView.reloadData()
                
            case .failure(let error):
                print(error)
            }
        }
    }
}





