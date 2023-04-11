//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Pavel Karunnyj on 24.03.2023.
//

import UIKit

final class SettingsViewController: UIViewController {
    
    @IBOutlet var mainColorView: UIView!
    
    @IBOutlet var redColorLabel: UILabel!
    @IBOutlet var greenColorLabel: UILabel!
    @IBOutlet var blueColorLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    
    var mainColor: UIColor!
    unowned var delegate: SettingsViewControllerDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainColorView.layer.cornerRadius = 25
        setColorView()
        mainColorView.backgroundColor = mainColor
        
        
        redColorLabel.text = string(from: redSlider)
        greenColorLabel.text = string(from: greenSlider)
        blueColorLabel.text = string(from: blueSlider)
    }

    @IBAction func sliderAction(_ sender: UISlider) {
        setColorView()
        switch sender {
        case redSlider:
            redColorLabel.text = string(from: redSlider)
        case greenSlider:
            greenColorLabel.text = string(from: greenSlider)
        default:
            blueColorLabel.text = string(from: blueSlider)
        }
    }
    
    @IBAction func doneButtonTapped(_ sender: UIButton) {
        delegate.setColor(for: mainColorView.backgroundColor ?? .white)
        dismiss(animated: true)
    }
    
    private func setColorView() {
        mainColorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value), alpha: 1
        )
    }
    
    private func string(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
}

