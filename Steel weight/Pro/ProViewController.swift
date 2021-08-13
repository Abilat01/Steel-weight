//
//  ProViewController.swift
//  Steel weight
//
//  Created by Danya on 12.08.2021.
//

import UIKit

class ProViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
}



extension ProViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return groupSectionPro.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dayTreningPro[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProCell", for: indexPath) as! ProTableViewCell
        
        cell.dayLabel.text = dayTreningPro[indexPath.section][indexPath.row]
        cell.muskulLabe.text = musculePro[indexPath.section][indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let section = groupSectionPro[section]
        return section
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        
        let header = view as! UITableViewHeaderFooterView
        header.textLabel?.textColor = .black
        header.tintColor = UIColor.gray
        header.textLabel?.font = UIFont(name: "apple sd gothic neo", size: 17)
        
    }

}





