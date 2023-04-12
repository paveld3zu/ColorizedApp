//
//  FirstScreenViewController.swift
//  ColorizedApp
//
//  Created by Pavel Karunnyj on 11.04.2023.
//

import UIKit

protocol SettingsViewControllerDelegate: AnyObject {
    func setColor(for color: UIColor)
}

final class FirstScreenViewController: UIViewController {

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else { return }
        settingsVC.color = view.backgroundColor
        settingsVC.delegate = self
    }
}

// MARK: - SettingsViewControllerDelegate
extension FirstScreenViewController: SettingsViewControllerDelegate {
    func setColor(for color: UIColor) {
        view.backgroundColor = color
    }
}
