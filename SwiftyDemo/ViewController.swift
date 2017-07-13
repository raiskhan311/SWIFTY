//
//  ViewController.swift
//  SwiftyDemo
//
//  Created by mac on 13/07/17.
//  Copyright © 2017 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var lbl_batterID: UILabel!

    @IBOutlet weak var lbl_batterType: UILabel!
    
    @IBOutlet weak var lbl_toppingId: UILabel!
    
    @IBOutlet weak var lbl_toppingType: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func updatUI(batterID:String,batterType:String,toppingID:String,toppingType:String){
        self.lbl_batterID.text = batterID
        self.lbl_batterType.text = batterType
        self.lbl_toppingId.text = toppingID
        self.lbl_toppingType.text = toppingType
    }
    
    @IBAction func btn_GetJsonData(_ sender: Any) {
        DataService.shared.getUsers { data in
            let swifty = Swifty.init(data: data)
            self.updatUI(batterID: (swifty?.batterID)!, batterType: (swifty?.batterType)!, toppingID: (swifty?.toppingID)!, toppingType: (swifty?.toppingType)!)
        }
    }
    
    @IBAction func btn_clear(_ sender: Any) {
        self.lbl_batterID.text = ""
        self.lbl_batterType.text = ""
        self.lbl_toppingId.text = ""
        self.lbl_toppingType.text = ""
    }
    

}

