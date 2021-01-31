//
//  ViewController.swift
//  HW2.2
//
//  Created by Сергей Корнев on 30.01.2021.
//  Copyright © 2021 Sergey Kornev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var redLabelValue: UILabel!
    @IBOutlet var greenLabelValue: UILabel!
    @IBOutlet var blueLabelValue: UILabel!
    
    @IBOutlet var colorPanelView: UIView!

    private let rounding: Float = 100 // Rounding values for labels
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateColorValues(red: true, green: true, blue: true)
    }

    @IBAction func redSliderAction() {
        updateColorValues(red: true, green: false, blue: false)
    }
    
    @IBAction func greenSliderAction() {
        updateColorValues(red: false, green: true, blue: false)
    }
    
    @IBAction func blueSliderAction() {
        updateColorValues(red: false, green: false, blue: true)
    }
    
    private func updateColorValues(red: Bool, green: Bool, blue: Bool) {
        colorPanelView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
        if red {
            redLabelValue.text = String(round(redSlider.value * rounding) / rounding)
        }
        if green {
            greenLabelValue.text = String(round(greenSlider.value * rounding) / rounding)
        }
        if blue {
            blueLabelValue.text = String(round(blueSlider.value * rounding) / rounding)
        }
    }

}

