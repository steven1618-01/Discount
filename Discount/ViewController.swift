//
//  ViewController.swift
//  Discount
//
//  Created by stu019022 on 2020/6/14.
//  Copyright © 2020 stu019022. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TextField: UITextField!
    @IBOutlet weak var Count: UILabel!
    @IBOutlet weak var PER: UILabel!
    @IBOutlet weak var 金額: UILabel!
    
    var money = 0
    var persent = 0
    
    override func viewDidLoad() {
        
        
        
        //Count.text = dicount(money,persent)
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func persent_slider(_ sender: UISlider) {
        PER.text = Int(sender.value).description+"%"
        var persent1 = Int(sender.value).description
        persent = 100-Int(persent1)!
        Count.text = String(dicount(money: money, persent: persent))
    }
    
    @IBAction func money1(_ sender: Any) {
        金額.text = TextField.text
        var money1 = Int(TextField.text!)!
        money = money1
        Count.text = String(dicount(money: money, persent: persent))
        
        
    }
    
    //Dicount function
    func dicount (money : Int , persent : Int) -> Int {
        return money * persent / 100
    }
}
