//
//  CoreCell.swift
//  Steel weight
//
//  Created by Danya on 09.08.2021.
//

import UIKit

class CoreCell: UITableViewCell {
    
    
    @IBOutlet weak var coreImage: UIImageView!
    @IBOutlet weak var coreNameLabel: UILabel!
    @IBOutlet weak var coreRepetLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
