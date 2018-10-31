//
//  SingleContactViewController.swift
//  ContactApp
//
//  Created by Allison Dolan on 10/30/18.
//  Copyright © 2018 Allison Dolan. All rights reserved.
//

import UIKit

class SingleContactViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    var existingContact: Contact?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        firstNameTextField.text = existingContact?.fname
        lastNameTextField.text = existingContact?.lname
        phoneTextField.text = existingContact?.phone
        emailTextField.text = existingContact?.email
        // Do any additional setup after loading the view.
    }
    
    @IBAction func saveContact(_ sender: Any) {
        let fname = firstNameTextField.text
        let lname = lastNameTextField.text
        let phone = phoneTextField.text
        let email = emailTextField.text
        
        var contact: Contact?
        
        if let existingContact = existingContact{
            existingContact.fname = fname
            existingContact.lname = lname
            existingContact.phone = phone
            existingContact.email = email

            contact = existingContact
        } else{
            contact = Contact(fName: fname, lName: lname, phone: phone, email: email)
        }
        
        if let contact = contact {
            do{
                let managedContext = contact.managedObjectContext
                try managedContext?.save()
                
                self.navigationController?.popViewController(animated: true)
            } catch{
                print("Context could not be saved")
            }
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
