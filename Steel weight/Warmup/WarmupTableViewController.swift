//
//  WarmupTableViewController.swift
//  Steel weight
//
//  Created by Danya on 09.08.2021.
//

import UIKit

class WarmupTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return warmapNameArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WarmupCell", for: indexPath) as! WarmupCell

        cell.warmapNameLabel.text = warmapNameArray[indexPath.row]
        cell.warmapRepetLabel.text = warmupRepetArray[indexPath.row]
        
        cell.warmupImage.image = UIImage(named: warmapNameArray[indexPath.row])
        
        cell.warmupImage.layer.cornerRadius = cell.warmupImage.frame.size.height / 2
        
        

        return cell
    }
    
    //высота ячейки
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
    

   
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }

}
