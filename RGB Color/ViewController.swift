//
//  ViewController.swift
//  RGB Color
//
//  Created by Максим Зыкин on 23.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.cornerRadius = 10
        
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        
        redSlider.value = 10
        greenSlider.value = 60
        blueSlider.value = 200
        
        redSlider.tag = 0
        greenSlider.tag = 1
        blueSlider.tag = 2
        
        setColor()
        setValue(for: redLabel, greenLabel, blueLabel)
    }

   // Изменение цветов слайдерами  Changing colors with sliders
    @IBAction func rgbSlider(_ sender: UISlider) {
        setColor()
        
        switch sender.tag {
        case 0: redLabel.text = string(from: sender)
        case 1: greenLabel.text = string(from: sender)
        case 2: blueLabel.text = string(from: sender)
        default: break
        }
    }
    
    // color View
    private func setColor() {
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value) / 255,
                                            green: CGFloat(greenSlider.value) / 255,
                                            blue: CGFloat(blueSlider.value) / 255,
                                            alpha: 1)
    }
    
    private func setValue(for labels: UILabel...) {
        labels.forEach { label in
            switch label.tag {
            case 0: redLabel.text = string(from: redSlider)
            case 1: greenLabel.text = string(from: greenSlider)
            case 2: blueLabel.text = string(from: blueSlider)
            default: break
            }
        }
    }
    
    // Значения RGB
    private func string(from slider: UISlider) -> String {
        String(Int(slider.value))
    }
}

