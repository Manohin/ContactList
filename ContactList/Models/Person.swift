//
//  Person.swift
//  ContactList
//
//  Created by Alexey Manokhin on 01.03.2023.
//


struct Person {
    let name: String
    let surname: String
    let phoneNumber: String
    let emailAddress: String
    
    var fullName: String {
        name + " " + surname
    }
    
    static func getPersons() -> [Person] {
        
        var persons: [Person] = []
        
        let dataStore = DataStore.shared
        let names = dataStore.names.shuffled()
        let surnames = dataStore.surnames.shuffled()
        let phoneNumbers = dataStore.phoneNumbers.shuffled()
        let emailAddresses = dataStore.emailAddress.shuffled()
        
        let iterationCount = min(names.count, surnames.count, phoneNumbers.count, emailAddresses.count)
        
        for index in 0..<iterationCount {
            persons.append(
                Person(
                    name: names[index],
                    surname: surnames[index],
                    phoneNumber: phoneNumbers[index],
                    emailAddress: emailAddresses[index]
                )
            )
        }
        return persons
    }
}
