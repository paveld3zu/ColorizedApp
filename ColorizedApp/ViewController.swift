//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Pavel Karunnyj on 24.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    

    @IBOutlet var mainColorView: UIView!
    
 
    @IBOutlet var redColorLabel: UILabel!
    @IBOutlet var greenColorLabel: UILabel!
    @IBOutlet var blueColorLabel: UILabel!
    
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupRedSlider()
        setupGreenSlider()
        setupBlueSlider()
        mainColorView.layer.cornerRadius = 25
        
    }

    @IBAction func redSliderAction() {
        redColorLabel.text = redSlider.value.formatted()
        setColorView()
    }

    @IBAction func greenSliderAction() {
        greenColorLabel.text = greenSlider.value.formatted()
        setColorView()

    }
    
    @IBAction func blueSliderAction() {
        blueColorLabel.text = blueSlider.value.formatted()
        setColorView()
    }
    
    private func setupRedSlider() {
        redSlider.value = 0.50
        redSlider.minimumValue = 0.00
        redSlider.maximumValue = 1.00
        redSlider.minimumTrackTintColor = .red
    }
    private func setupGreenSlider() {
        greenSlider.value = 0.50
        greenSlider.minimumValue = 0.00
        greenSlider.maximumValue = 1.00
        greenSlider.minimumTrackTintColor = .green
    }
    private func setupBlueSlider() {
        blueSlider.value = 0.50
        blueSlider.minimumValue = 0.00
        blueSlider.maximumValue = 1.00
        blueSlider.minimumTrackTintColor = .blue
    }
    private func setColorView() { mainColorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
}

