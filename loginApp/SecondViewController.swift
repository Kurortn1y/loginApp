//
//  SecondViewController.swift
//  loginApp
//
//  Created by Roman on 07.10.23.
//

import UIKit

final class SecondViewController: UIViewController {
    
    var name = ""
    
    @IBOutlet var secontVCTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        secontVCTF.text = "Welcome, \(name)!"
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor.black.cgColor, UIColor.yellow.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        gradientLayer.frame = view.bounds
        view.layer.insertSublayer(gradientLayer, at: 0)
        }
}
