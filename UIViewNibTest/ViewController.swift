//
//  ViewController.swift
//  UIViewNibTest
//
//  Created by Daniel Hjärtström on 2019-11-29.
//  Copyright © 2019 Daniel Hjärtström. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var buttonView: ButtonView! = {
        let temp = ButtonView.loadNib()
        temp.buttonTitle = "Sumbit"
        temp.image = UIImage(systemName: "pencil.circle")
        temp.title = "Nib Test"
        view.addSubview(temp)
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        temp.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        temp.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        temp.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        return temp
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        buttonView.isHidden = false
        
    }


}


