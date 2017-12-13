//
//  ContactViewController.swift
//  PhoneBook
//
//  Created by Admin on 25.11.17.
//  Copyright © 2017 Bo. All rights reserved.
//

import UIKit

class ContactViewController: UITableViewController {
    
    var contacts = [Contact(nameContact: "Mary", phoneContact: "+78364307898"),
                    Contact(nameContact: "Nikolay", phoneContact: "+78364324798"),
                    Contact(nameContact: "Ivan", phoneContact:"+78094307898")]
    var contactsDict = ["M":[Contact(nameContact: "Mary", phoneContact: "+78364307898")],
                        "N":[Contact(nameContact: "Nikolay", phoneContact: "+78364324798")],
                        "I":[Contact(nameContact: "Ivan", phoneContact:"+78094307898"), Contact(nameContact: "Inga", phoneContact:"+7809428758")]]
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return contactsDict.keys.count
        //return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        let key = Array(contactsDict.keys)[section]
        return contactsDict[key]!.count
       // return contacts.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContactCell", for: indexPath) as! ContactViewCell
        let keyArray = Array(contactsDict.keys)//.sorted(by:backOrder)
        
        let key = keyArray[indexPath.section]
        cell.setContact(contactsDict[key]![indexPath.row])
        return cell
    }
  /*
    func backOrder(_ s1: String, _ s2: String)->Bool{
        return s1>s2
    }*/
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
    
    tableView.deselectRow(at: indexPath, animated: true)
    
    let currentDate = Date()
    let formatter = DateFormatter()
    formatter.dateFormat = "dd-MM-yyyy HH:mm:ss"
    let callDate = formatter.string(from:currentDate)
    let key = Array(contactsDict.keys)[indexPath.section]
    let call = Calling(contact: contactsDict[key]![indexPath.row], date: callDate)
    let callJornalController = tabBarController?.viewControllers![1] as? CallJornalViewController
    callJornalController?.calls.append(call)
    callJornalController?.tableView.reloadData()
        //addCall()
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return Array(contactsDict.keys)[section]
    }
    
    
    
    
  /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
