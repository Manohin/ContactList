//
//  TabBarController.swift
//  ContactList
//
//  Created by Alexey Manokhin on 02.03.2023.
//

import UIKit

final class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        get(persons: Person.getPersons())
    }
}

extension TabBarController {
    private func get(persons: [Person]) {
        viewControllers?.forEach { viewController in
            if let personsListVC = viewController as? PersonsListViewController {
                personsListVC.personsList = persons
            } else if let secondListVC = viewController as? SecondPersonsListViewController {
                secondListVC.personsList = persons
            }
        }
    }
}


