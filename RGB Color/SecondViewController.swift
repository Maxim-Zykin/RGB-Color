//
//  SecondViewController.swift
//  RGB Color
//
//  Created by Максим Зыкин on 03.01.2023.
//

import UIKit

class SecondViewController: UIViewController, ColorViewBackground {

        override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func setColor(color: UIColor) {
        view.backgroundColor = color
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let colorVC = segue.destination as! ViewController
        colorVC.delegate = self
    }
}
