//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Pavel Karunnyj on 24.03.2023.
//

import UIKit

final class ViewController: UIViewController {
    
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
        setColorView()
        redSliderAction()
        greenSliderAction()
        blueSliderAction()
        mainColorView.layer.cornerRadius = 25
    }

    @IBAction func redSliderAction() {
        redColorLabel.text = String(format: "%.2f", redSlider.value)
        setColorView()
    }

    @IBAction func greenSliderAction() {
        greenColorLabel.text = String(format: "%.2f", greenSlider.value)
        setColorView()

    }
    
    @IBAction func blueSliderAction() {
        blueColorLabel.text = String(format: "%.2f", blueSlider.value)
        setColorView()
    }
    
    private func setupRedSlider() {
        redSlider.value = 0.5
        redSlider.minimumValue = 0.00
        redSlider.maximumValue = 1.00
        redSlider.minimumTrackTintColor = .red
    }
    private func setupGreenSlider() {
        greenSlider.value = 0.5
        greenSlider.minimumValue = 0.00
        greenSlider.maximumValue = 1.00
        greenSlider.minimumTrackTintColor = .green
    }
    private func setupBlueSlider() {
        blueSlider.value = 0.5
        blueSlider.minimumValue = 0.00
        blueSlider.maximumValue = 1.00
        blueSlider.minimumTrackTintColor = .blue
    }
    private func setColorView() {
        mainColorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value), alpha: 1
        )
    }
    
}

