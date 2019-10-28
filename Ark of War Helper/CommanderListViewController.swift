//
//  CommanderListViewController.swift
//  Ark of War Helper
//
//  Created by Shuai Wang on 10/27/19.
//  Copyright © 2019 Bright Ocean Technology Company. All rights reserved.
//

import UIKit

public enum SelectMode {
    case attacker
    case target
}

class CommanderListViewController: UIViewController {
    @IBOutlet weak var commanderListCollectionView: UICollectionView!
    
    weak var delegate: CommanderSelectViewControllerDelegate?
    
    var commanderList: [Commander] = []
    
    var selectTarget: SelectMode = .attacker
    
    override func viewDidLoad() {
        
        commanderListCollectionView.delegate = self
        commanderListCollectionView.dataSource = self
        
        commanderList = [
            Gilly(),
            Rogers(),
            Lilith(),
            Kraken(),
            Grievous(),
            Hoodoo(),
            Gilly(),
            Reinhardt(),
            Cerberus(),
            Rita(),
            Pictor(),
            Black(),
            EllexAyr(),
            Vega(),
            Rock(),
            Stella(),
            Plasma(),
            Rogers(),
            Elf(),
            Fullmetal(),
            Nekojiro(),
            Chief(),
            Golem(),
            Galileo(),
            Bullet(),
            Medusa()
            
        ]
    }
    
    
    
}

extension CommanderListViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return commanderList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CommanderListCollectionViewCell", for: indexPath) as! CommanderListCollectionViewCell
        
        cell.imageButton.commander = commanderList[indexPath.row]
        cell.imageButton.buttonAction = { [weak self] in
            guard let strongSelf = self else { return }
            strongSelf.navigationController?.popViewController(animated: true)
            switch strongSelf.selectTarget {
            case .attacker:
                strongSelf.delegate?.attackerCommanderImageButton.commander = strongSelf.commanderList[indexPath.row]
            case .target:
                strongSelf.delegate?.targetCommanderImageButton.commander = strongSelf.commanderList[indexPath.row]
            }
        }
        
        return cell
        
    }
    
    
}
