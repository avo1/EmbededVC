//
//  EmbededViewController.swift
//  EmbededVC
//
//  Created by Dave Vo on 11/4/16.
//  Copyright © 2016 DaveVo. All rights reserved.
//

import UIKit

protocol ContainerToMaster {
    func changeMasterLabel(text: String)
}

class EmbededViewController: UIViewController {

    @IBOutlet weak var myTextField: UITextField!
    var myText = ""
    
    var containerToMaster: ContainerToMaster?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func onUpdate(_ sender: AnyObject) {
        containerToMaster?.changeMasterLabel(text: myTextField.text!)
    }

    func changeEmbededLabel(text: String) {
        myTextField.text = text
    }
}
