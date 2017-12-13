//
//  ContactViewCell.swift
//  PhoneBook
//
//  Created by Admin on 25.11.17.
//  Copyright © 2017 Bo. All rights reserved.
//

import UIKit

class ContactViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var phoneLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func setContact(_ contact: Contact) {
        nameLabel.text = contact.nameContact
        phoneLabel.text = contact.phoneContact
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
