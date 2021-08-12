//
//  ProgramsTableViewController.swift
//  Steel weight
//
//  Created by Danya on 08.08.2021.
//

import UIKit

class ProgramsTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    // MARK: - Table view data source
    
    //коллическов секций
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //колличество ячеек
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return programsNameArray.count
    }
    
    //настройка ячейки
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProgramsCell", for: indexPath) as! ProgramsTableViewCell
        
        cell.programsLabel.text = programsNameArray[indexPath.row]
        
        cell.programsImage.image = UIImage(named: programsImageArray[indexPath.row])
        
        return cell
    }
    
    //рекция на нажатие на ячейку по индексу
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if(indexPath.row) == 0 {
            let sturybordWarmap = UIStoryboard(name: "Programs", bundle: nil)
            let controllerWurmap = sturybordWarmap.instantiateViewController(identifier: "Wurmap") as! WarmupTableViewController
            self.navigationController?.pushViewController(controllerWurmap, animated: true)
        } else if(indexPath.row) == 1 {
            let sturibordBasic = UIStoryboard(name: "Programs", bundle: nil)
            let controlerBasic = sturibordBasic.instantiateViewController(identifier: "Basic")
            self.navigationController?.pushViewController(controlerBasic, animated: true)
        } else if(indexPath.row) == 2 {
            let storuborBody = UIStoryboard(name: "Programs", bundle: nil)
            let controlerBody = storuborBody.instantiateViewController(identifier: "Body")
            self.navigationController?.pushViewController(controlerBody, animated: true)
        }
    }
    
    //Установка высоты ячейки
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
}
