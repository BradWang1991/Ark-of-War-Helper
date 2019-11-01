//
//  CombatManager.swift
//  Ark of War Helper
//
//  Created by Shuai Wang on 10/31/19.
//  Copyright © 2019 Bright Ocean Technology Company. All rights reserved.
//

import Foundation

class CombatManager {
    
    static let shared = CombatManager()
    
    func combat(attacker: Commander, target: Commander) -> [String] {
        
        var combatLog = [String]()
        
        var attacker = attacker
        var target = target
        var round = 0
        
        while(attacker.alive && target.alive && round < 20) {
            round += 1
            let roundLog = "第\(round)回合\n"
            print(roundLog)
            combatLog.append(roundLog)
            
            attacker.skill.forEach { $0.doSkill(attacker: attacker.troops[0], target: target.troops[0])
            }
            let attack = attacker.troops[0].groupAttack
            let attackBuff = attacker.troops[0].attackBuff
            print("攻击加成:\(attackBuff)")
            let totalAttack = Int(Double(attack) * (1.0 + attackBuff))
            print("总攻击为原始的\(Double(totalAttack)/Double(attack))倍")
            let defense = target.troops[0].groupDefense
            let damage = totalAttack*totalAttack/defense
            let hp = target.troops[0].troop.hp
            let deadNumber = min(damage/hp, target.troops[0].number)
            
            
           let log = "\(attacker.name)的\(attacker.troops[0].number)个\(attacker.troops[0].troop.name)对\(target.name)的\(target.troops[0].number)个\(target.troops[0].troop.name)造成了\(damage)点伤害！死亡\(deadNumber)个\n"
            combatLog.append(log)
            print(log)
            target.troops[0].number -= deadNumber
            
            attacker.troops.forEach{$0.attackBuff = 0}
            
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
        combatLog.append(resultLog)
        
        return combatLog
    }
}
