//
//  Skill.swift
//  Ark of War Helper
//
//  Created by Wang, Shuai (S.) on 10/25/19.
//  Copyright © 2019 Bright Ocean Technology Company. All rights reserved.
//

import Foundation

public enum TroopType {
    case infantry
    case walker
    case airship
}

public enum SkillType: TroopType {
    case all
}

protocol Skill {
    var name: String { get set }
    var type: SkillType { get set }
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
    var penetrate: Fload { get set }
    var damageReduction: Float { get set }
    var duration: Int { get set }
    
    var attacker: TroopGroup { get }
    var defense: TroopGroup { get }
    
    func doSkill(attacker: TroopGroup, defense: TroopGroup)
}

class Crush: Skill {
    var attack: Float = 100
    var willHit: Bool = true
    var duration: Int = 0
    
    func doSkill(attacker: <<error type>>, defense: <<error type>>) -> <<error type>> {
        attakcer.attack += attack
    }
}

class SkillManager {
    func setSkill() {
        
        skills.forEach{
            skill.do(attacker, target)
        }

    }
}
