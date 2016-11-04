//
//  ViewController.swift
//  EmbededVC
//
//  Created by Dave Vo on 11/4/16.
//  Copyright © 2016 DaveVo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var embededView: UIView!
    
    @IBOutlet weak var textFieldA: UITextField!
    
    var containerVC: EmbededViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func onTab(_ sender: UIButton) {
        containerVC.changeEmbededLabel(text: textFieldA.text!)
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // this segue will trigger as soon as the VC is loaded
        if segue.identifier == "mySegue" {
            containerVC = segue.destination as? EmbededViewController
            containerVC!.containerToMaster = self
        }
    }
}

extension ViewController: ContainerToMaster {
    func changeMasterLabel(text: String) {
        textFieldA.text = text
    }
}

