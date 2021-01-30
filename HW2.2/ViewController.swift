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
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var colorPanelView: UIView!
    
    private var colorPanelColor: UIColor {
        UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorPanelView.backgroundColor = colorPanelColor
    }

    @IBAction func redSliderAction() {
        colorPanelView.backgroundColor = colorPanelColor
        redLabel.text = String(redSlider.value)

    }
    
    @IBAction func greenSliderAction() {
        colorPanelView.backgroundColor = colorPanelColor
        greenLabel.text = String(greenSlider.value)
    }
    
    @IBAction func blueSliderAction() {
        colorPanelView.backgroundColor = colorPanelColor
        blueLabel.text = String(blueSlider.value)
    }
    

}

