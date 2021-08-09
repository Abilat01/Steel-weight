//
//  CoreTableView.swift
//  Steel weight
//
//  Created by Danya on 09.08.2021.
//

import UIKit

class CoreTableView: UITableView {

    @IBOutlet weak var height: NSLayoutConstraint!
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        guard let header = tableHeaderView else { return }
        
        let offsetY = -contentOffset.y
        height.constant = max(header.bounds.height, header.bounds.height + offsetY)
        
    }

}
