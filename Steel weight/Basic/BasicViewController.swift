//
//  BasicViewController.swift
//  Steel weight
//
//  Created by Danya on 15.08.2021.
//

import UIKit

class BasicViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension BasicViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return titleBasicArray.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BasicCell", for: indexPath) as! BasicTableViewCell
        
        cell.numberImage.image = UIImage(named: "One")
        cell.weekLabel.text = weekBasicArray[indexPath.section][indexPath.row]
        cell.numberLabel.text = trainBasicArray[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        let section = titleBasicArray[section]
        return section
        
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        
        let header = view as! UITableViewHeaderFooterView
        header.tintColor = UIColor.black
        
    }
    
    
    
}
