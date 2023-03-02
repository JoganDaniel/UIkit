//
//  ViewController2.swift
//  customcells
//
//  Created by jogan-pt6304 on 02/03/23.
//

import UIKit

class ViewController2: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(label1)
        view.backgroundColor = .yellow
        
        NSLayoutConstraint.activate([
            label1.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label1.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }
    
    let label1 : UILabel = {
        let label1 = UILabel()
        label1.textColor = .black
        label1.translatesAutoresizingMaskIntoConstraints = false
        label1.font = UIFont.systemFont(ofSize: 34,weight: .bold)
        return label1
    }()
    

}
