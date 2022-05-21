//
//  ReuseTableViewCell.swift
//  ChallengeAccepted
//
//  Created by Максим Хмелев on 20.05.2022.
//

import UIKit

class ReuseTableViewCell: UITableViewCell {

    
    @IBOutlet weak var featureLabel: UILabel!
    @IBOutlet weak var freeImageView: UIImageView!
    @IBOutlet weak var proImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
