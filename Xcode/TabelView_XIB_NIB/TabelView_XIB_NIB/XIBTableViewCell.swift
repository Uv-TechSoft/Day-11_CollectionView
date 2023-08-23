//
//  XIBTableViewCell.swift
//  TabelView_XIB_NIB
//
//  Created by Imam MohammadUvesh on 09/11/21.
//

import UIKit

class XIBTableViewCell: UITableViewCell {

    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
