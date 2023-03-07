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
        view.addSubview(button1)
        view.backgroundColor = .yellow
        button1.addTarget(self, action: #selector(touched), for: .touchUpInside)
        NSLayoutConstraint.activate([
            label1.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label1.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button1.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button1.centerYAnchor.constraint(equalTo: view.centerYAnchor,constant: 150),
            button1.widthAnchor.constraint(equalToConstant: 100),
            button1.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
    
    let label1 : UILabel = {
        let label1 = UILabel()
        label1.textColor = .black
        label1.translatesAutoresizingMaskIntoConstraints = false
        label1.font = UIFont.systemFont(ofSize: 34,weight: .bold)
        return label1
    }()
    
    let button1 : UIButton = {
        let b = UIButton()
        b.setTitle("Close", for: .normal)
        b.setTitleColor(.red, for: .normal)
        b.translatesAutoresizingMaskIntoConstraints = false
        b.titleLabel?.font = UIFont.systemFont(ofSize: 24)
        return b
    }()
    
    @objc func touched(button : UIButton)
    {
        self.dismiss(animated: true)
    }
    
}
