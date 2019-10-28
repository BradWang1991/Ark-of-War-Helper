//
//  CommanderAvatorButton.swift
//  Ark of War Helper
//
//  Created by Shuai Wang on 10/27/19.
//  Copyright © 2019 Bright Ocean Technology Company. All rights reserved.
//

import UIKit

class CommanderAvatorButton: UIView {
    @IBOutlet var contentView: UIView!
    @IBOutlet weak var commanderImageView: UIImageView!
    @IBOutlet weak var avatorButton: UIButton!
    
    var commander: Commander? {
        didSet {
            guard let commander = commander else { return }
            let image = UIImage(named: commander.imageName)
            commanderImageView.image = image
        }
    }
    
    var buttonAction: (() -> ())? {
        didSet {
            avatorButton.addTarget(self, action: #selector(buttonEvent), for: .touchUpInside)
        }
    }
    
    @objc private func buttonEvent() {
        buttonAction?()
    }
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
//    convenience init(commander: Commander) {
//        self.init(frame: CGRect.zero)
//        self.commander = commander
//        let image = UIImage(named: commander.imageName)
//        commanderImageView.image = image
//    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    private func setupView() {
        Bundle.main.loadNibNamed("CommanderAvatorButton", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = bounds
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }
    
    
    
    
}
