//
//  ViewController.swift
//  Discount
//
//  Created by stu019022 on 2020/6/14.
//  Copyright © 2020 stu019022. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var TextField: UITextField!
    @IBOutlet weak var Per: UILabel!
    @IBOutlet weak var Count: UILabel!
    @IBOutlet weak var PER: UILabel!
    @IBAction func afterentrythenumber(_ sender: Any) {
        Per.text = TextField.text
    }
    
}
