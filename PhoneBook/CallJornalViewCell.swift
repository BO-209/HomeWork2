//
//  CallJornalViewCell.swift
//  PhoneBook
//
//  Created by Admin on 28.11.17.
//  Copyright © 2017 Bo. All rights reserved.
//

import UIKit

class CallJornalViewCell: UITableViewCell {

    @IBOutlet weak var CallTimeLabel: UILabel!
    @IBOutlet weak var ContactLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
   func setCalling(_ call: Calling) {
        ContactLabel.text = call.contact.nameContact
        CallTimeLabel.text = call.date
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
