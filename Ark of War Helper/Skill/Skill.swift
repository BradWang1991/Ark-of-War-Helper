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
    var type: TroopType { get set }
    var probability: Float { get set }
    var description: String { get set }
    
    var attack: Float { get set }
    var defense: Float { get set }
    var hp: Float { get set }
    var hit: Float { get set }
    var willHit: Bool { get set }
    var dodge: Float { get set }
    var critical: Float { get set }
    var willCrit: Bool { get set }
    var antiCtitical: Float { get set }
    var penetrate: Float { get set }
    var damageReduction: Float { get set }
    var duration: Int { get set }
    
    var attacker: TroopGroup { get }
    var target: TroopGroup { get }
    
    func doSkill(attacker: TroopGroup, defense: TroopGroup)
}

class Crush: Skill {
    var attacker: TroopGroup
    
    var target: TroopGroup
    
    var name: String = ""
    
    var type: TroopType = .all
    
    var probability: Float = 0
    
    var description: String = ""
    
    var defense: Float = 0
    
    var hp: Float = 0
    
    var hit: Float = 0
    
    var dodge: Float = 0
    
    var critical: Float = 0
    
    var willCrit: Bool = false
    
    var antiCtitical: Float = 0
    
    var penetrate: Float = 0
    
    var damageReduction: Float = 0
    
    var attack: Float = 100
    var willHit: Bool = true
    var duration: Int = 0
    
    init(attacker: TroopGroup, target: TroopGroup) {
        self.attacker = attacker
        self.target = target
    }
    
    func doSkill(attacker: TroopGroup, defense: TroopGroup) {
        //attakcer += attack
    }
}

class SkillManager {
    func setSkill() {
        
//        skills.forEach{
//            skill.do(attacker, target)
//        }

    }
}
