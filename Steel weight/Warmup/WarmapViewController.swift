//
//  WarmapViewController.swift
//  Steel weight
//
//  Created by Danya on 08.08.2021.
// тут немного другой способ создании таблицы

import UIKit

class WarmapViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    
}

// MARK: - DataSorse and Delegate

extension WarmapViewController: UITableViewDataSource {
    
    //колличество секций
    func numberOfSections(in tableView: UITableView) -> Int {
        return warmupArray.count
    }
    
    //количесво ячеек в секции
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return warmupArray[section].count
    }
    
    //настройка ячейки
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WarmupCell", for: indexPath)
        
        cell.textLabel?.text = warmupArray[indexPath.section][indexPath.row]
        
        cell.imageView?.image = UIImage(named: warmupArray[indexPath.section][indexPath.row])
        
        return cell
    }
    
    //настройка растояния между секциями
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 20
    }
    
}

extension WarmapViewController: UITableViewDelegate {
    
    //реакция на нажатие по ячейки
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}


