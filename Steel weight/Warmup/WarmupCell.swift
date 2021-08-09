//
//  WarmupCell.swift
//  Steel weight
//
//  Created by Danya on 09.08.2021.
//

import UIKit

class WarmupCell: UITableViewCell {
    
    
    @IBOutlet weak var warmupImage: UIImageView!
    @IBOutlet weak var warmapNameLabel: UILabel!
    @IBOutlet weak var warmapRepetLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
