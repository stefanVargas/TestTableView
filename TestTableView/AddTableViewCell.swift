//
//  AddTableViewCell.swift
//  TestTableView
//
//  Created by Stefan V. de Moraes on 05/08/20.
//  Copyright © 2020 Stefan V. de Moraes. All rights reserved.
//

import UIKit

class AddTableViewCell: UITableViewCell {

    static var identifier: String {
        
        return String(describing: self)
    }

    let infoLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "verdana", size: 16)
        
        return label
    }()
    
    let iconLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "verdana", size: 24)
        label.text = "＋"
        
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: AddTableViewCell.identifier)
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
        self.addSubview(infoLabel)
        self.addSubview(iconLabel)
        
        setUpContraint(pattern: "V:|-4-[v0]-4-|", options: NSLayoutConstraint.FormatOptions(),
                       views: infoLabel)
        
        setUpContraint(pattern: "V:|-4-[v0]-4-|", options: NSLayoutConstraint.FormatOptions(),
                       views: iconLabel)
        
        setUpContraint(pattern: "H:|-[v0(32)]-[v1]-|", options: NSLayoutConstraint.FormatOptions(),
                       views: iconLabel, infoLabel)
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        self.selectionStyle = .blue
    }


}
