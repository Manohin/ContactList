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
        
        var persons:[Person] = []
        
        let dataStore = DataStore()
        let names = dataStore.names.shuffled()
        let surnames = dataStore.surnames.shuffled()
        let phoneNumbers = dataStore.phoneNumbers.shuffled()
        let emailAddresses = dataStore.emailAddress.shuffled()
        
        for index in 0..<names.count {
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
