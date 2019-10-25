//
//  MainViewController.swift
//  Ark of War Helper
//
//  Created by Shuai Wang on 10/24/19.
//  Copyright © 2019 Bright Ocean Technology Company. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    @IBOutlet weak var combatLog: UITextView!
    override func viewDidLoad() {
        let attacker = Gilly()
        let target = Rogers()
        
        combat(attacker: attacker, target: target)
    }
    
    func combat(attacker: Commander, target: Commander) {
        
        var attacker = attacker
        var target = target
        var round = 0
        
        while(attacker.alive && target.alive && round < 20) {
            round += 1
            let roundLog = "第\(round)回合\n"
            print(roundLog)
            combatLog.text += roundLog
            let attack = attacker.troops[0].groupAttack
            let defense = target.troops[0].groupDefense
            let damage = attack*attack/defense
            let hp = target.troops[0].troop.hp
            let deadNumber = min(damage/hp, target.troops[0].number)
            
            
           let log = "\(attacker.name)的\(attacker.troops[0].number)个\(attacker.troops[0].troop.name)对\(target.name)的\(target.troops[0].number)个\(target.troops[0].troop.name)造成了\(damage)点伤害！死亡\(deadNumber)个\n"
            combatLog.text += log
            print(log)
            target.troops[0].number -= deadNumber
            
            let temp = attacker
            attacker = target
            target = temp
            
        }
        
        var resultLog = ""
        if attacker.alive {
            resultLog =  "\(attacker.name)取得了战斗的胜利，还剩\(attacker.troops[0].number)个\(attacker.troops[0].troop.name)"
        } else {
            resultLog = "\(target.name)取得了战斗的胜利，还剩\(target.troops[0].number)个\(target.troops[0].troop.name)"
        }
        print(resultLog)
        combatLog.text += resultLog
        
        
    }
}
