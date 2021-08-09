//
//  WarmupTableView.swift
//  Steel weight
//
//  Created by Danya on 09.08.2021.
// так тут делаю кастомный эффект скролинга с headers и таблицей

import UIKit
//кастомная tableView
class WarmupTableView: UITableView {
    
    @IBOutlet weak var height: NSLayoutConstraint!
    
    //метод отрабатывающий во время скролинга
    override func layoutSubviews() {
        super.layoutSubviews()
        
        guard let header = tableHeaderView else { return }
        
        let offsetY = -contentOffset.y
        height.constant = max(header.bounds.height, header.bounds.height + offsetY)
        
    }
}
