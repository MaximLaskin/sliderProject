//
//  MainViewController.swift
//  sliderProject
//
//  Created by Swift on 25.08.2022.
//

import UIKit

protocol SettingViewControllerDelegate {
    func getColor(for color: UIColor)
}

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()


    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingVC = segue.destination as? SettingViewController else { return }
        settingVC.color = view.backgroundColor
        settingVC.delegate = self
    }


}

extension MainViewController: SettingViewControllerDelegate {
    func getColor(for color: UIColor) {
        view.backgroundColor = color
    }


}
