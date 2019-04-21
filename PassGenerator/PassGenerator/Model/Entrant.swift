//
//  Entrant.swift
//  PassGenerator
//
//  Created by Dipanshu Sehrawat on 21/04/19.
//  Copyright © 2019 Dipanshu Sehrawat. All rights reserved.
//

import Foundation

struct Entrants {
    static func createClassicGuest() throws -> ClassicGuest {
        return ClassicGuest()
    }
    
    static func createVipGuest() throws -> VIPGuest {
        return VIPGuest()
    }
    
    static func createChildGuestWith(dateOfBirth: Date?) throws -> ChildGuest {
        guard let dateOfBirth = dateOfBirth else { throw MissingInfo.dateOfBirthMissing }
        return ChildGuest(dateOfBirth: dateOfBirth)
    }
    
    static func createRideServiceEmployeeWith(firstName: String?, lastName: String?, streetAddress: String?, city: String?, state: String?, zipCode: Int?) throws -> RideServiceEmployee {
        guard let firstName = firstName else { throw MissingInfo.firstNameMissing }
        guard let lastName = lastName else { throw MissingInfo.lastNameMissing }
        guard let streetAddress = streetAddress else { throw MissingInfo.streetAddressMissing }
        guard let city = city else { throw MissingInfo.cityMissing }
        guard let state = state else { throw MissingInfo.stateMissing }
        guard let zipCode = zipCode else { throw MissingInfo.zipcodeMissing }
        
        return RideServiceEmployee(firstName: firstName, lastName: lastName, streetAddress: streetAddress, city: city, state: state, zipCode: zipCode)
    }
    
    static func createFoodServiceEmployeeWith(firstName: String?, lastName: String?, streetAddress: String?, city: String?, state: String?, zipCode: Int?) throws -> FoodServiceEmployee {
        guard let firstName = firstName else { throw MissingInfo.firstNameMissing }
        guard let lastName = lastName else { throw MissingInfo.lastNameMissing }
        guard let streetAddress = streetAddress else { throw MissingInfo.streetAddressMissing }
        guard let city = city else { throw MissingInfo.cityMissing }
        guard let state = state else { throw MissingInfo.stateMissing }
        guard let zipCode = zipCode else { throw MissingInfo.zipcodeMissing }
        
        return FoodServiceEmployee(firstName: firstName, lastName: lastName, streetAddress: streetAddress, city: city, state: state, zipCode: zipCode)
    }
    
    static func createMaintenanceEmployeeWith(firstName: String?, lastName: String?, streetAddress: String?, city: String?, state: String?, zipCode: Int?) throws -> MaintenanceEmployee {
        
        guard let firstName = firstName else { throw MissingInfo.firstNameMissing }
        guard let lastName = lastName else { throw MissingInfo.lastNameMissing }
        guard let streetAddress = streetAddress else { throw MissingInfo.streetAddressMissing }
        guard let city = city else { throw MissingInfo.cityMissing }
        guard let state = state else { throw MissingInfo.stateMissing }
        guard let zipCode = zipCode else { throw MissingInfo.zipcodeMissing }
            
        return MaintenanceEmployee(firstName: firstName, lastName: lastName, streetAddress: streetAddress, city: city, state: state, zipCode: zipCode)
    }
    
    static func createManagerWith(firstName: String?, lastName: String?, streetAddress: String?, city: String?, state: String?, zipCode: Int?) throws -> Manager {
        
        guard let firstName = firstName else { throw MissingInfo.firstNameMissing }
        guard let lastName = lastName else { throw MissingInfo.lastNameMissing }
        guard let streetAddress = streetAddress else { throw MissingInfo.streetAddressMissing }
        guard let city = city else { throw MissingInfo.cityMissing }
        guard let state = state else { throw MissingInfo.stateMissing }
        guard let zipCode = zipCode else { throw MissingInfo.zipcodeMissing }
        
        return Manager(firstName: firstName, lastName: lastName, streetAddress: streetAddress, city: city, state: state, zipCode: zipCode)

    }
}
