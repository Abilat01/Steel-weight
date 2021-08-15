//
//  BodyViewController.swift
//  Steel weight
//
//  Created by Danya on 15.08.2021.
//

import UIKit

class BodyViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

extension BodyViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return titleBodyArray.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BodyCell", for: indexPath) as! BodyTableViewCell
        
        cell.numberImage.image = UIImage(named: "One")
        cell.weekLabel.text = weekBodyArray[indexPath.section][indexPath.row]
        cell.numberLabel.text = trainBodyArray[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        let section = titleBodyArray[section]
        return section
        
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        
        let header = view as! UITableViewHeaderFooterView
        header.tintColor = UIColor.black
        
    }
    
    
    
}

