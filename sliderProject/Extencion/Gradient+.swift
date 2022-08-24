//
//  Gradient+.swift
//  sliderProject
//
//  Created by Swift on 24.08.2022.
//

import Foundation
import UIKit

extension UIView {
    func addVerticalGradientLayer() {
        let primaryColor = UIColor(
            red: 255/255,
            green: 53/255,
            blue: 184/255,
            alpha: 1
        )

        let secondaryColor = UIColor(
            red: 255/255,
            green: 109/255,
            blue: 10/255,
            alpha: 1
        )

        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [primaryColor.cgColor, secondaryColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}

