//
//  CoreTableViewController.swift
//  Steel weight
//
//  Created by Danya on 09.08.2021.
//

import UIKit

class CoreTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return coreNameArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CoreCell", for: indexPath) as! CoreCell

        cell.coreNameLabel.text = coreNameArray[indexPath.row]
        cell.coreRepetLabel.text = coreRepetArray[indexPath.row]
        
        cell.coreImage.image = UIImage(named: coreNameArray[indexPath.row])
        cell.coreImage.layer.cornerRadius = cell.coreImage.frame.size.height / 2

        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
