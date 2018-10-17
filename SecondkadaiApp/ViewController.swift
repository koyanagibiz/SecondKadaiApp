//
//  ViewController.swift
//  SecondkadaiApp
//
//  Created by 小柳貴志 on 2018/10/17.
//  Copyright © 2018年 takashi.koyanagi. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    @IBOutlet weak var nameText: UITextField!
    var nameTextString=""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segueから遷移先のResultViewControllerを取得する
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        
        let nameTextString = nameText.text!
        
        resultViewController.name = nameTextString
        
    }
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
    }
}

