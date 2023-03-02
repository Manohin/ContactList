//
//  DetailViewController.swift
//  ContactList
//
//  Created by Alexey Manokhin on 02.03.2023.
//

import UIKit

final class DetailViewController: UIViewController {
    
    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var emailAddressLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = person.fullName
        phoneNumberLabel.text = "Телефон: " + person.phoneNumber
        emailAddressLabel.text = "E-mail: " + person.emailAddress
    }
}
