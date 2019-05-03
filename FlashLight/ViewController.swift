//
//  ViewController.swift
//  FlashLight
//
//  Created by Genesis on 4/8/19.
//  Copyright © 2019 Genesis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var color = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
    @IBOutlet weak var text: UILabel!
    @IBAction func lightSwitch(_ sender: UISwitch) {
        if (sender.isOn == true){
            text.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
            Screen.backgroundColor = color
            select.isHidden = false
        }
        else {
            text.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
            Screen.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
            select.isHidden = true
        }
    }
    @IBOutlet weak var select: UISegmentedControl!
    @IBOutlet var Screen: UIView!
    @IBAction func colorChange(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            color = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
        case 1:
            color = UIColor(red: 0, green: 0, blue: 1, alpha: 1)
        case 2:
            color = UIColor(red: 1, green: 1, blue: 0, alpha: 1)
        case 3:
            color = UIColor(red: 0, green: 1, blue: 0, alpha: 1)
        case 4:
            color = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        default:
            break
        }
        Screen.backgroundColor = color
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}


