//
//  Weapon.swift
//  Ark of War Helper
//
//  Created by Wang, Shuai (S.) on 10/25/19.
//  Copyright © 2019 Bright Ocean Technology Company. All rights reserved.
//

import Foundation

protocol Equipment {
    var name: String { get set }
    var attack: Float { get set }
    var defense: Float { get set }
    var hp: Float { get set }
    var hit: Float { get set }
    var dodge: Float { get set }
    var critical: Float { get set }
    var antiCtitical: Float { get set }
    var penetrate: Fload { get set }
    var damageReduction: Float { get set }
    
    var slot:[StarJewlery] { get set }
}

protocol StarJewlery {
    var name: String { get set }
    var attack: Float { get set }
    var defense: Float { get set }
    var hp: Float { get set }
    var hit: Float { get set }
    var dodge: Float { get set }
    var critical: Float { get set }
    var antiCtitical: Float { get set }
    var penetrate: Fload { get set }
    var damageReduction: Float { get set }
}

protocol Weapon: Equipment {
    
}

protocol Cloth: Equipment {
    
}

protocol Pant:Equipment {
    
}

protocol Head: Equipment {
    
}
