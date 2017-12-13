//
//  AddContactViewController.swift
//  PhoneBook
//
//  Created by Admin on 04.12.17.
//  Copyright © 2017 Bo. All rights reserved.
//

import UIKit

class AddContactViewController: UIViewController {
    
    var contactName: String = ""
    var contactPhone: String = ""

    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var newContactName: UITextField!
    @IBOutlet weak var newContactPhone: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func addButton(_ sender: UIButton) {
        contactName = newContactName.text!
        contactPhone = newContactPhone.text!
        let newContact = Contact(nameContact: contactName, phoneContact: contactPhone)
        let key = String(describing: contactName[(contactName.startIndex)])
        guard let tableController = navigationController?.viewControllers.first as? ContactViewController  else {
            return
        }
      //  tableController.contacts.append(newContact)
        
        if tableController.contactsDict[key] != nil {
            tableController.contactsDict[key]?.append(newContact)
        } else {
            tableController.contactsDict[key] = [newContact]
        }
        
        tableController.tableView.reloadData()
        navigationController?.popViewController(animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
