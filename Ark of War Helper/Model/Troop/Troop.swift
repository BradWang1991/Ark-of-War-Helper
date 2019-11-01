//
//  Troop.swift
//  Ark of War Helper
//
//  Created by Shuai Wang on 10/31/19.
//  Copyright © 2019 Bright Ocean Technology Company. All rights reserved.
//

import Foundation

class TroopGroup {
    var troop: Troop
    var number: Int
    var groupAttack: Int {
        return troop.attack * number
    }
    var groupDefense: Int {
        return troop.defense * number
    }
    
    var attackBuff: Double = 0
    
    init(troop: Troop, number: Int) {
        self.troop = troop
        self.number = number
    }
}

protocol Troop {
    var name: String { get set }
    var attack: Int { get set }
    var defense: Int { get set }
    var hp: Int { get set }
}

class Ranger: Troop {
    var name: String
    
    var attack: Int
    
    var defense: Int
    
    var hp: Int
    
    init() {
        name = "Ranger"
        attack = 10
        defense = 5
        hp = 200
    }
}
