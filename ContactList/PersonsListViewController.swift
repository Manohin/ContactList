//
//  PersonsListViewController.swift
//  ContactList
//
//  Created by Alexey Manokhin on 01.03.2023.
//

import UIKit

class PersonsListViewController: UITableViewController {
    
    var personsList = Person.getPerson()
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        guard let detailVC = segue.destination as? DetailViewController else { return }
        detailVC.person = personsList[indexPath.row]
        guard let viewControllers = tabBarController?.viewControllers else { return }
        viewControllers.forEach { viewController in
            if let secondPersonVC = viewController as? SecondPersonListViewController {
                secondPersonVC.persons = personsList
            }
        }
    }
            override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
                self.performSegue(withIdentifier: "detail", sender: nil)
            }
            
        }
        
        extension PersonsListViewController {
            override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
                personsList.count
            }
            
            override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
                let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
                var content = cell.defaultContentConfiguration()
                let person = personsList[indexPath.row]
                content.text = person.fullName
                cell.contentConfiguration = content
                return cell
            }
        }
