//
//  TestTableViewModel.swift
//  TestTableView
//
//  Created by Stefan V. de Moraes on 05/08/20.
//  Copyright © 2020 Stefan V. de Moraes. All rights reserved.
//

import UIKit

struct Item {
    let name: String
    let color: UIColor
    let price: Double
}


class TestTableViewModel: NSObject {
    
    var list: [Item] = []
    
    override init() {
        super.init()
        
        let xbox = Item(name: "Xbox", color: .white, price: 2199.99)
        let ps4 = Item(name: "PS4", color: .darkGray, price: 2359.49)
        let mesa = Item(name: "Mesa", color: .brown, price: 439.57)
        let vaso = Item(name: "Vaso", color: .cyan, price: 129.35)
        let pandeiro = Item(name: "Pandeiro", color: .green, price: 204.61)
        
        self.list = [xbox, ps4, mesa, vaso, pandeiro]
    }
    
    func getTestCell(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TestTableViewCell.identifier) as? TestTableViewCell
                   else { return UITableViewCell() }
               
               cell.infoLabel.text = self.list[indexPath.row].name
               cell.priceLabel.text = self.list[indexPath.row].price.description
               cell.form.backgroundColor = self.list[indexPath.row].color
               
               return cell
    }
    
    func getAddCell(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: AddTableViewCell.identifier) as? AddTableViewCell
                   else { return UITableViewCell() }
               
               cell.infoLabel.text = "Adicione outro item"
               
               return cell
    }
}

extension TestTableViewModel: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 56
    }
    
}

extension TestTableViewModel: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.list.count + 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == list.count {
            
            return getAddCell(tableView, cellForRowAt: indexPath)
        } else {
            
            return getTestCell(tableView, cellForRowAt: indexPath)

        }
    }
    
}
