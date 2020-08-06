//
//  TestTableView.swift
//  TestTableView
//
//  Created by Stefan V. de Moraes on 05/08/20.
//  Copyright © 2020 Stefan V. de Moraes. All rights reserved.
//

import UIKit

class TestTableView: UITableView {
    
    var viewModel = TestTableViewModel()
    
    func start() {
        configureTableView()
    }
    
    func configureTableView() {
        self.delegate = self.viewModel
        self.dataSource = self.viewModel
        self.separatorStyle = .none
        self.separatorColor = .clear
        self.register(TestTableViewCell.self, forCellReuseIdentifier: TestTableViewCell.identifier)
        self.register(AddTableViewCell.self, forCellReuseIdentifier: AddTableViewCell.identifier)
    }

}
