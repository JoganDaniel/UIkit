//
//  CollectionViewCell.swift
//  customcells
//
//  Created by jogan-pt6304 on 02/03/23.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(cellLabel)
        contentView.backgroundColor = .blue
        
        NSLayoutConstraint.activate([
            cellLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            cellLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
        ])
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let cellLabel : UILabel = {
        let label1 = UILabel()
        label1.textColor = .systemBackground
        label1.translatesAutoresizingMaskIntoConstraints = false
        label1.font = UIFont.systemFont(ofSize: 24,weight: .bold)
        return label1
    }()
}
