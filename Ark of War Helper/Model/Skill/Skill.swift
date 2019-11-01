//
//  Skill.swift
//  Ark of War Helper
//
//  Created by Wang, Shuai (S.) on 10/25/19.
//  Copyright © 2019 Bright Ocean Technology Company. All rights reserved.
//

import Foundation

public enum TroopType: String {
    case infantry
    case walker
    case airship
    case all
}

protocol Skill {
    var name: String { get set }
    var level: Int { get set }
    var type: TroopType { get set }
    var probability: Int { get set }
    var description: String { get set }
    
    var attack: Double { get }
    var attackScale: Double { get set }
    var defense: Double { get set }
    var hp: Double { get set }
    var hit: Double { get set }
    var willHit: Bool { get set }
    var dodge: Double { get set }
    var critical: Double { get set }
    var willCrit: Bool { get set }
    var antiCtitical: Double { get set }
    var penetrate: Double { get set }
    var damageReduction: Double { get set }
    var duration: Int { get set }
    
    var skillTrigger: Bool { get }
    
    func doSkill(attacker: TroopGroup, target: TroopGroup)
}

extension Skill {
    var skillTrigger: Bool {
        let thisTime = Int.random(in: 0 ..< 100)
        let result = thisTime < probability
        print("本次点数为\(thisTime),\(result ? "发动技能" : "没有发动")")
        
        return result
    }
}

class Crush: Skill {
    
    var name: String = "碾压"
    
    var level: Int = 10
    
    var type: TroopType = .all
    
    var probability: Int = 40
    
    var description: String = ""
    
    var defense: Double = 0
    
    var hp: Double = 0
    
    var hit: Double = 0
    
    var dodge: Double = 0
    
    var critical: Double = 0
    
    var willCrit: Bool = false
    
    var antiCtitical: Double = 0
    
    var penetrate: Double = 0
    
    var damageReduction: Double = 0
    
    var attack: Double {
        return Double(level) * attackScale
    }
    var attackScale: Double = 0.04
    var willHit: Bool = true
    var duration: Int = 0
    
    init() {}
    
    func doSkill(attacker: TroopGroup, target: TroopGroup) {
        guard skillTrigger else { return }
        print("\(attacker)发动了\(name),等级\(level)")
        attacker.attackBuff += attack
    }
}

class SkillManager {
    func setSkill() {
        
//        skills.forEach{
//            skill.do(attacker, target)
//        }

    }
}
