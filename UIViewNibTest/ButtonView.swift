//
//  ButtonView.swift
//  UIViewNibTest
//
//  Created by Daniel Hjärtström on 2019-11-29.
//  Copyright © 2019 Daniel Hjärtström. All rights reserved.
//

import UIKit

class ButtonView: UIView {
    
    var title: String? {
        didSet {
            titleLabel.text = title
        }
    }
    
    var buttonTitle: String? {
        didSet {
            button.setTitle(buttonTitle, for: .normal)
        }
    }
    
    var image: UIImage? {
        didSet {
            iconImageView.image = image
        }
    }
    
    @IBOutlet weak private var titleLabel: UILabel! {
        didSet {
            titleLabel.textColor = UIColor.black
            titleLabel.textAlignment = .center
            titleLabel.minimumScaleFactor = 0.7
            titleLabel.adjustsFontSizeToFitWidth = true
            titleLabel.font = UIFont.systemFont(ofSize: 20.0, weight: .medium)
        }
    }
    
    @IBOutlet weak private var iconImageView: UIImageView! {
        didSet {
            iconImageView.contentMode = .scaleAspectFit
        }
    }
    
    @IBOutlet weak private var button: UIButton! {
        didSet {
            button.setTitle("Set value", for: .normal)
            button.layer.cornerRadius = 5.0
            button.setTitleColor(UIColor.white, for: .normal)
            button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
            button.backgroundColor = UIColor.blue
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        configureFrames()
    }
    
    private func configureFrames() {
        
    }
    
    private func commonInit() {
        
    }
    
    @objc private func didTapButton() {
        
    }

}
