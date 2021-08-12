//
//  BodyViewController.swift
//  Steel weight
//
//  Created by Danya on 12.08.2021.
//

import UIKit

class BodyViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension BodyViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return groupSectionBody.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dayTreningBody[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BodyCell", for: indexPath) as! BodyTableViewCell
        
        cell.dayLabel.text = dayTreningBody[indexPath.section][indexPath.row]
        cell.musculeLabel.text = musculeBody[indexPath.section][indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let section = groupSectionBody[section]
        return section
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        
        let header = view as! UITableViewHeaderFooterView
        header.textLabel?.textColor = .black
        header.tintColor = UIColor.gray
        header.textLabel?.font = UIFont(name: "apple sd gothic neo", size: 17)
        
    }
    
    
}
