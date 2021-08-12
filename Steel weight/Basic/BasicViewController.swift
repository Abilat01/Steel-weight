//
//  BasicViewController.swift
//  Steel weight
//
//  Created by Danya on 12.08.2021.
//

import UIKit

class BasicViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

extension BasicViewController: UITableViewDataSource, UITableViewDelegate {
    
    //Колличество секций в таблице
    func numberOfSections(in tableView: UITableView) -> Int {
        return groupSectionBasic.count
    }
    
    //колличество строк в секции
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dayTreningBasic[section].count
    }
    
    //настройка ячейки
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BasicCell", for: indexPath) as! BasicTableViewCell
        
        cell.dayLabel.text = dayTreningBasic[indexPath.section][indexPath.row]
        cell.musculeLabel.text = musculeBasic[indexPath.section][indexPath.row]
        
        
        return cell
    }
    
    //
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        let section = groupSectionBasic[section]
        return section
        
    }
    
    //Настраиваем header, данная настройка будет применима для всего приложений
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        
        let header = view as! UITableViewHeaderFooterView
        
        header.textLabel?.textColor = .black
        header.tintColor = UIColor.gray
        header.textLabel?.font = UIFont(name: "apple sd gothic neo", size: 17)
        
    }
    
}
