//
//  FirstScreenViewController.swift
//  ColorizedApp
//
//  Created by Pavel Karunnyj on 11.04.2023.
//

import UIKit

protocol SettingsViewControllerDelegate: AnyObject {
    func setColor(for mainColor: UIColor)
}

final class FirstScreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else { return }
        settingsVC.mainColor = view.backgroundColor
        settingsVC.delegate = self
    }

}

// MARK: - SettingsViewControllerDelegate
extension FirstScreenViewController: SettingsViewControllerDelegate {
    func setColor(for mainColor: UIColor) {
        view.backgroundColor = mainColor
    }
}
