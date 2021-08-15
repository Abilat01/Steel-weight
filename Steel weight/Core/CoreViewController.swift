//
//  CoreViewController.swift
//  Steel weight
//
//  Created by Danya on 15.08.2021.
//

import UIKit

class CoreViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

extension CoreViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return titleCoreArray.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CoreCell", for: indexPath) as! CoreTableViewCell
        
        cell.numberImage.image = UIImage(named: "One")
        cell.weekLabel.text = weekCoreArray[indexPath.section][indexPath.row]
        cell.numberLabel.text = trainCoreArray[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        let section = titleCoreArray[section]
        return section
        
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        
        let header = view as! UITableViewHeaderFooterView
        header.tintColor = UIColor.black
        
    }
    
    
    
}

