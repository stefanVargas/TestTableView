//
//  ViewController.swift
//  TestTableView
//
//  Created by Stefan V. de Moraes on 05/08/20.
//  Copyright © 2020 Stefan V. de Moraes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private(set) weak var containerView: UIView?
    let testTableView = TestTableView()
    
    let warningLabel: UILabel = {
        
        let label = UILabel()
        label.text = "Apenas teste."
        label.font = UIFont(name: "verdana", size: 12)
        
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .lightGray
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.testTableView.start()
        setLayout()
    }
    
    func setLayout()  {
        let tableContainer = UIView()
        self.containerView?.addSubview(tableContainer)
        self.containerView?.addSubview(warningLabel)
        self.containerView?.layer.cornerRadius = 12.0

        tableContainer.addSubview(testTableView)
        
        self.containerView?.setUpContraint(pattern: "V:|-24-[v0]-[v1]-|", options: NSLayoutConstraint.FormatOptions(), views: tableContainer, warningLabel)
        self.containerView?.setUpContraint(pattern: "H:|-12-[v0]-12-|", options: NSLayoutConstraint.FormatOptions(), views: tableContainer)
        self.containerView?.setUpContraint(pattern: "H:|-12-[v0]", options: NSLayoutConstraint.FormatOptions(), views: warningLabel)
        
        tableContainer.layer.cornerRadius = 12.0
        tableContainer.backgroundColor = .green
        tableContainer.setUpContraint(pattern: "V:|[v0]|", options: NSLayoutConstraint.FormatOptions(), views: testTableView)
        tableContainer.setUpContraint(pattern: "H:|[v0]|", options: NSLayoutConstraint.FormatOptions(), views: testTableView)
    }


}

