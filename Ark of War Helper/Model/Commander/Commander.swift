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
    var imageName: String { get set }
    var leaderShip: Int { get set }
    var troops: [TroopGroup] { get set }
    var alive: Bool { get }
    var skill: [Skill] { get set }
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
    var skill: [Skill] = [ Crush() ]
    
    var imageName: String = "Gilly"
    
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
    var skill: [Skill] = []
    
    var imageName: String = "Rogers"
    
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

class Medusa: Commander {
    var skill: [Skill] = []
    
    var imageName: String = "Medusa"
    
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
class Bullet: Commander {
    var skill: [Skill] = []
    
    var imageName: String = "Bullet"
    
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
class Galileo: Commander {
    var skill: [Skill] = []
    
    var imageName: String = "Galileo"
    
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
class Golem: Commander {
    var skill: [Skill] = []
    
    var imageName: String = "Golem"
    
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
class Chief: Commander {
    var skill: [Skill] = []
    
    var imageName: String = "Chief"
    
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
class Nekojiro: Commander {
    var skill: [Skill] = []
    
    var imageName: String = "Nekojiro"
    
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
class Fullmetal: Commander {
    var skill: [Skill] = []
    
    var imageName: String = "Fullmetal"
    
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
class Elf: Commander {
    var skill: [Skill] = []
    
    var imageName: String = "Elf"
    
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
class Plasma: Commander {
    var skill: [Skill] = []
    
    var imageName: String = "Plasma"
    
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
class Stella: Commander {
    var skill: [Skill] = []
    
    var imageName: String = "Stella"
    
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
class Rock: Commander {
    var skill: [Skill] = []
    
    var imageName: String = "Rock"
    
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
class Vega: Commander {
    var skill: [Skill] = []
    
    var imageName: String = "Vega"
    
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
class EllexAyr: Commander {
    var skill: [Skill] = []
    
    var imageName: String = "EllexAyr"
    
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
class Black: Commander {
    var skill: [Skill] = []
    
    var imageName: String = "Black"
    
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
class Pictor: Commander {
    var skill: [Skill] = []
    
    var imageName: String = "Pictor"
    
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
class Rita: Commander {
    var skill: [Skill] = []
    
    var imageName: String = "Rita"
    
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
class Cerberus: Commander {
    var skill: [Skill] = []
    
    var imageName: String = "Cerberus"
    
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
class Reinhardt: Commander {
    var skill: [Skill] = []
    
    var imageName: String = "Reinhardt"
    
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
class Hoodoo: Commander {
    var skill: [Skill] = []
    
    var imageName: String = "Hoodoo"
    
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
class Grievous: Commander {
    var skill: [Skill] = []
    
    var imageName: String = "Grievous"
    
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
class Kraken: Commander {
    var skill: [Skill] = []
    
    var imageName: String = "Kraken"
    
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
class Lilith: Commander {
    var skill: [Skill] = []
    
    var imageName: String = "Lilith"
    
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


