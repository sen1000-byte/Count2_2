//
//  ViewController.swift
//  Count2
//
//  Created by Chihiro Nishiwaki on 2021/01/29.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var label: UILabel!
    var number: Int! = 0

    func showLabel() {
        label.text = String(number)
        label.font = UIFont(name: "Charter-Roman", size: 40)
        if number >= 10 {
            label.textColor = UIColor.red
        }else if number <= -10 {
            label.textColor = UIColor.blue
        }else{
            label.textColor = UIColor.gray
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        number = 0
        showLabel()
    }

    @IBAction func plus() {
        number += 1
        showLabel()
    }
    @IBAction func minus() {
        number = number - 1
        showLabel()
    }
    
    @IBAction func double() {
        number = number * 2
        showLabel()
    }
    
    @IBAction func devide() {
        number = number / 2
        showLabel()
    }
    
    

}

