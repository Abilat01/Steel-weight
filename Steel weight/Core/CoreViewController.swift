//
//  CoreViewController.swift
//  Steel weight
//
//  Created by Danya on 12.08.2021.
//

import UIKit

class CoreViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
}

extension CoreViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return groupSectionCore.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dayTreningCore[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CoreCell", for: indexPath) as! CoreTableViewCell
        
        cell.dayLabel.text = dayTreningCore[indexPath.section][indexPath.row]
        cell.musculeLabel.text = musculeCore[indexPath.section][indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let section = groupSectionCore[section]
        return section
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        
        let header = view as! UITableViewHeaderFooterView
        header.textLabel?.textColor = .black
        header.tintColor = UIColor.gray
        header.textLabel?.font = UIFont(name: "apple sd gothic neo", size: 17)
        
    }

}

