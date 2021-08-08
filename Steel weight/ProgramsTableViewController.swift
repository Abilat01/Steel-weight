//
//  ProgramsTableViewController.swift
//  Steel weight
//
//  Created by Danya on 08.08.2021.
//

import UIKit

class ProgramsTableViewController: UITableViewController {
    
    var programs = Programs()
    
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
        return programs.nameArray.count
    }

    //настройка ячейки
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProgramsCell", for: indexPath) as! ProgramsTableViewCell

        cell.programsLabel.text = programs.nameArray[indexPath.row]
        
        cell.programsImage.image = UIImage(named: programs.imageArray[indexPath.row])

        return cell
    }
    
    //рекция на нажатие на ячейку по индексу
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if(indexPath.row) == 0 {
            let sturybordWarmap = UIStoryboard(name: "Main", bundle: nil)
            let controllerWurmap = sturybordWarmap.instantiateViewController(identifier: "Wurmap") as! WarmapViewController
            self.navigationController?.pushViewController(controllerWurmap, animated: true)
        }
        
//        if (indexPath.row) == 0 {
//            let storyboard = UIStoryboard(name: "Main", bundle: nil)
//            let controller = storyboard.instantiateViewController(identifier: "A") as! AViewController
//            self.navigationController?.pushViewController(controller, animated: true)
        
    }
    
   
    //Установка высоты ячейки
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
  

}
