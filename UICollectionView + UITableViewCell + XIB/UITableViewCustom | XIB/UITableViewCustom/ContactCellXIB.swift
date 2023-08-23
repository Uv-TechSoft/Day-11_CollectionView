//
//  ContactCellXIB.swift
//  UITableViewCustom
//
//  Created by Yogesh Patel on 02/11/21.
//

import UIKit

class ContactCellXIB: UITableViewCell {

    @IBOutlet weak var firstnameLabel: UILabel!
    @IBOutlet weak var lastnameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var profileImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func contactConfiguration(contactModel: ContactModel){
        firstnameLabel.text = contactModel.fisrtname
        lastnameLabel.text = contactModel.lastname
        ageLabel.text = String(contactModel.age)
        profileImageView.image = contactModel.profileImage
    }
}
