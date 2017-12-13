//
//  Calling.swift
//  PhoneBook
//
//  Created by Admin on 26.11.17.
//  Copyright © 2017 Bo. All rights reserved.
//

import UIKit

class Calling: NSObject {
    var contact: Contact
    var date: String
    init(contact: Contact, date: String){
        self.contact = contact
        self.date = date
    }

}
