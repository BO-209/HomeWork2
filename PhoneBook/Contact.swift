//
//  Contact.swift
//  PhoneBook
//
//  Created by Admin on 25.11.17.
//  Copyright © 2017 Bo. All rights reserved.
//

import UIKit

class Contact: NSObject {
    var nameContact: String
    var phoneContact: String
    init(nameContact: String, phoneContact: String){
        self.nameContact = nameContact
        self.phoneContact = phoneContact
    }
    
}
