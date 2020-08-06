//
//  TestTableViewCell.swift
//  TestTableView
//
//  Created by Stefan V. de Moraes on 05/08/20.
//  Copyright © 2020 Stefan V. de Moraes. All rights reserved.
//

import UIKit

class TestTableViewCell: UITableViewCell {
    
    static var identifier: String {
        
        return String(describing: self)
    }

    let form: UIView = {
        
        let view = UIView()
        view.backgroundColor = .clear
        view.layer.borderColor = UIColor.purple.cgColor
        view.layer.borderWidth = 1.5
        view.layer.cornerRadius = 6.0
        
        return view
    }()
    
    let infoLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "verdana", size: 16)
        
        return label
    }()
    
    let priceLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "verdana", size: 14)
        
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: TestTableViewCell.identifier)
        configureLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configureLayout()  {
        self.backgroundColor = UIColor.lightGray
        self.addSubview(form)
        self.addSubview(infoLabel)
        self.addSubview(priceLabel)
        
        setUpContraint(pattern: "V:|-[v0]-|", options: NSLayoutConstraint.FormatOptions(),
                       views: form)
        setUpContraint(pattern: "V:|-4-[v0]-4-|", options: NSLayoutConstraint.FormatOptions(),
        views: infoLabel)
        
        setUpContraint(pattern: "V:|-4-[v0]-4-|", options: NSLayoutConstraint.FormatOptions(),
        views: priceLabel)
        
        setUpContraint(pattern: "H:|-[v0(32)]-[v1]-4-[v2]-|", options: NSLayoutConstraint.FormatOptions(),
        views: form, infoLabel,priceLabel)
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        self.selectionStyle = .blue
    }

}
