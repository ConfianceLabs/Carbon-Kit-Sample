//
//  ProductsTable.swift
//  View Pager
//
//  Created by apple on 29/04/18.
//  Copyright © 2018 apple. All rights reserved.
//

import UIKit

class ProductsTable: UITableView ,UITableViewDataSource,UITableViewDelegate {
    
   
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 16
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell") as! ProductCell
     
        return cell
    }
    
    override func awakeFromNib() {
        self.delegate = self
        self.dataSource = self
    }
}

