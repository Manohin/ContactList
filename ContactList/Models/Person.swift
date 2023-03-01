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
    
    static func getPerson() -> [Person] {
        
        var persons:[Person] = []
        
        let names = DataStore().names.shuffled()
        let surnames = DataStore().surnames.shuffled()
        let phoneNumbers = DataStore().phoneNumbers.shuffled()
        let emailAddresses = DataStore().emailAddress.shuffled()
        
        for index in 0...names.count - 1 {
            persons.append(Person(name: names[index], surname: surnames[index], phoneNumber: phoneNumbers[index], emailAddress: emailAddresses[index]))
        }
        return persons
    }
    }
