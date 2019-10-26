//
//  Commander.swift
//  Ark of War Helper
//
//  Created by Shuai Wang on 10/24/19.
//  Copyright © 2019 Bright Ocean Technology Company. All rights reserved.
//

import Foundation

protocol Commander {
    var name: String { get set }
    var leaderShip: Int { get set }
    var troops: [TroopGroup] { get set }
    var alive: Bool { get }
}

extension Commander {
    var alive: Bool {
        for group in troops where group.number > 0 {
            return true
        }
        return false
    }
}

class Gilly: Commander {
    var name: String = ""
    
    var leaderShip: Int
    
    var troops: [TroopGroup]
    
    init() {
        name = "Gilly"
        leaderShip = 10000
        troops = [
            TroopGroup(troop: Ranger(), number: 1000)
        ]
    }
}

class Rogers: Commander {
    var name: String
    
    var leaderShip: Int
    
    var troops: [TroopGroup]
    
    init() {
        name = "Rogers"
        leaderShip = 10000
        troops = [
            TroopGroup(troop: Ranger(), number: 1000)
        ]
    }
}

class TroopGroup {
    var troop: Troop
    var number: Int
    var groupAttack: Int {
        return troop.attack * number
    }
    var groupDefense: Int {
        return troop.defense * number
    }
    
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
