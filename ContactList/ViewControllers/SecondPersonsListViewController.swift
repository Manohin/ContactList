//
//  SecondPersonsListViewController.swift
//  ContactList
//
//  Created by Alexey Manokhin on 02.03.2023.
//

import UIKit

final class SecondPersonsListViewController: UITableViewController {
    
    var personsList: [Person]!
}

extension SecondPersonsListViewController {
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        personsList[section].fullName
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        personsList.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "secondPerson", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = personsList[indexPath.section]
        
        content.text = indexPath.row == 0 ? "Телефон: " + person.phoneNumber : "Email: " + person.emailAddress
        content.image = indexPath.row == 0 ? UIImage(systemName: "phone") : UIImage(systemName: "mail")
        
        cell.contentConfiguration = content
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
