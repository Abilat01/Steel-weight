//
//  BodyTableViewCell.swift
//  Steel weight
//
//  Created by Danya on 15.08.2021.
//

import UIKit

class BodyTableViewCell: UITableViewCell {

    @IBOutlet weak var numberImage: UIImageView!
    @IBOutlet weak var weekLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
