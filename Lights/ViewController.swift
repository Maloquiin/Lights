//
//  ViewController.swift
//  Lights
//
//  Created by Peri on 24.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var button: UIButton!
    
    
    @IBAction func toggleButton() {
        if redView.alpha < 1 && yellowView.alpha < 1 && greenView.alpha < 1  {
            button.setTitle("Next", for: .normal)
            redView.alpha = 1
        } else if redView.alpha == 1 && yellowView.alpha < 1 && greenView.alpha < 1{
            redView.alpha = 0.3
            yellowView.alpha = 1
        }
        else if redView.alpha < 1 && yellowView.alpha == 1 && greenView.alpha < 1{
            yellowView.alpha = 0.3
            greenView.alpha = 1
        }
        else if redView.alpha < 1 && yellowView.alpha < 1 && greenView.alpha == 1{
            greenView.alpha = 0.3
            redView.alpha = 1
        }
    }
    
    @IBOutlet var redView: UIView!
    
    @IBOutlet var greenView: UIView!
    
    @IBOutlet var yellowView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.alpha = 0.3
        yellowView.alpha = 0.3
        greenView.alpha = 0.3
        button.layer.cornerRadius = 10
        yellowView.layer.cornerRadius = 70
        redView.layer.cornerRadius = 70
        greenView.layer.cornerRadius = 70
        // Do any additional setup after loading the view.
    }


}

