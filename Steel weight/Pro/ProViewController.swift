//
//  ProViewController.swift
//  Steel weight
//
//  Created by Danya on 15.08.2021.
//

import UIKit

class ProViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

extension ProViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return titleProArray.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProCell", for: indexPath) as! ProTableViewCell
        
        cell.numberImage.image = UIImage(named: "One")
        cell.weekLabel.text = weekProArray[indexPath.section][indexPath.row]
        cell.numberLabel.text = trainProArray[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        let section = titleProArray[section]
        return section
        
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        
        let header = view as! UITableViewHeaderFooterView
        header.tintColor = UIColor.black
        
    }
    
    
    
}
