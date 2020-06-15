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
    //MARK: <viewDidLoad>
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //MARK: IBAction
    @IBAction func persent_slider(_ sender: UISlider) {
        sender.value.round()
        PER.text = Int(sender.value).description+"%"
        let persent1 = Int(sender.value).description
        persent = 100-Int(persent1)!
        Count.text = String(dicount(money: money, persent: persent))
    }
    
    @IBAction func money1(_ sender: Any) {
        金額.text = TextField.text
        let money1 = Int(TextField.text!)!
        money = money1
        Count.text = String(dicount(money: money, persent: persent))
        
        
    }
    
    //MARK: Dicount function
    func dicount (money : Int , persent : Int) -> Int {
        return money * persent / 100
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}
