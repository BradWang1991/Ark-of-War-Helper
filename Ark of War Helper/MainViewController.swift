//
//  MainViewController.swift
//  Ark of War Helper
//
//  Created by Shuai Wang on 10/24/19.
//  Copyright © 2019 Bright Ocean Technology Company. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    @IBOutlet weak var combatLogTextView: UITextView!
    
    var combatLog = [String]()
    
    override func viewDidLoad() {
        //let attacker = Gilly()
        //let target = Rogers()
        
        //let log = CombatManager.shared.combat(attacker: attacker, target: target)
        combatLog.forEach { log in
            combatLogTextView.text += log
        }
    }
    
    
}
