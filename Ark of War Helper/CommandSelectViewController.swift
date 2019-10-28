//
//  CommandSelectViewController.swift
//  Ark of War Helper
//
//  Created by Shuai Wang on 10/27/19.
//  Copyright © 2019 Bright Ocean Technology Company. All rights reserved.
//

import UIKit

protocol CommanderSelectViewControllerDelegate: class  {
    var attackerCommanderImageButton: CommanderAvatorButton! { get set }
    var targetCommanderImageButton: CommanderAvatorButton! { get set }
}

class CommanderSelectViewController: UIViewController, CommanderSelectViewControllerDelegate {
    
    @IBOutlet weak var attackerCommanderImageButton: CommanderAvatorButton!
    @IBOutlet weak var targetCommanderImageButton: CommanderAvatorButton!

    override func viewDidLoad() {
        let buttonAction1: () -> () = { [weak self] in
            guard let commanderListViewController = self?.storyboard?.instantiateViewController(withIdentifier: "CommanderListViewController") as? CommanderListViewController else { return }
            commanderListViewController.delegate = self
            commanderListViewController.selectTarget = .attacker
            
            self?.navigationController?.pushViewController(commanderListViewController, animated: true)
        }
        let buttonAction2: () -> () = { [weak self] in
            guard let commanderListViewController = self?.storyboard?.instantiateViewController(withIdentifier: "CommanderListViewController") as? CommanderListViewController else { return }
            commanderListViewController.delegate = self
            commanderListViewController.selectTarget = .target
            
            self?.navigationController?.pushViewController(commanderListViewController, animated: true)
        }
        attackerCommanderImageButton.buttonAction = buttonAction1
        targetCommanderImageButton.buttonAction = buttonAction2
        attackerCommanderImageButton.commander = Gilly()
        targetCommanderImageButton.commander = Rogers()
        
    }
    
    
    
    
}
