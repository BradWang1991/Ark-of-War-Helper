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
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    
    @IBOutlet weak var attackerCommanderImageButton: CommanderAvatorButton!
    @IBOutlet weak var targetCommanderImageButton: CommanderAvatorButton!

    override func viewDidLoad() {
        
        setupViews()
        
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
    
    private func setupViews() {
        scrollView.bounces = false
        //scrollView.alwaysBounceHorizontal = false
        //scrollView.alwaysBounceVertical = false
    }
    
    @IBAction func attackButtonClicked(_ sender: Any) {
        guard let logViewController = storyboard?.instantiateViewController(withIdentifier: "MainViewController") as? MainViewController,
        
        let attacker = attackerCommanderImageButton.commander,
        let target = targetCommanderImageButton.commander
         else { return }
        
        let log = CombatManager.shared.combat(attacker: attacker, target: target)
        logViewController.combatLog = log
        
        navigationController?.pushViewController(logViewController, animated: true)
    }
    
    
    
}
