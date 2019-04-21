//
//  Pass.swift
//  PassGenerator
//
//  Created by Dipanshu Sehrawat on 21/04/19.
//  Copyright © 2019 Dipanshu Sehrawat. All rights reserved.
//

import Foundation

protocol Pass {
    var entrant: Person { get }
    var areaAccess: [AreaAccess] { get }
    var rideAccess: [RideAccess] { get }
    var discounts: [Discounts] { get }
}

struct AmusementParkPass: Pass {
    let entrant: Person
    let areaAccess: [AreaAccess]
    let rideAccess: [RideAccess]
    let discounts: [Discounts]
}

struct CreatePass {
    static func createChildGuestPassWith(dateOfBith: Date?) -> Pass? {
        var childEntrant: ChildGuest
        do {
            childEntrant = try Entrants.createChildGuestWith(dateOfBirth: dateOfBith)
            return AmusementParkPass(entrant: childEntrant, areaAccess: childEntrant.guestType.areaAccess(), rideAccess: childEntrant.guestType.rideAccess(), discounts: childEntrant.guestType.discounts())
        } catch MissingInfo.dateOfBirthMissing {
            print(MissingInfo.dateOfBirthMissing.rawValue)
        } catch let error {
            print(error.localizedDescription)
        }
        
        return nil
    }
    
    static func createClassicGuestPassWith() -> Pass? {
        var classicGuest: ClassicGuest
        do {
            classicGuest = try Entrants.createClassicGuest()
            return AmusementParkPass(entrant: classicGuest, areaAccess: classicGuest.guestType.areaAccess(), rideAccess: classicGuest.guestType.rideAccess(), discounts: classicGuest.guestType.discounts())
        } catch let error {
            print(error.localizedDescription)
        }
        
        return nil
    }
    
    static func createVipGuestPassWith() -> Pass? {
        var vipGuest: VIPGuest
        do {
            vipGuest = try Entrants.createVipGuest()
            return AmusementParkPass(entrant: vipGuest, areaAccess: vipGuest.guestType.areaAccess(), rideAccess: vipGuest.guestType.rideAccess(), discounts: vipGuest.guestType.discounts())
        } catch let error {
            print(error.localizedDescription)
        }
        
        return nil
    }
    
    static func createFoodServiceEmployeeWith(firstName: String?, lastName: String?, streetAddress: String?, city: String?, state: String?, zipCode: Int?) -> Pass? {
        let foodServiceEmployee: FoodServiceEmployee
        do {
            foodServiceEmployee = try Entrants.createFoodServiceEmployeeWith(firstName: firstName, lastName: lastName, streetAddress: streetAddress, city: city, state: state, zipCode: zipCode)
            return AmusementParkPass(entrant: foodServiceEmployee, areaAccess: foodServiceEmployee.employeeType.areaAccess(), rideAccess: foodServiceEmployee.employeeType.rideAccess(), discounts: foodServiceEmployee.employeeType.discounts())
        } catch MissingInfo.firstNameMissing {
            print(MissingInfo.firstNameMissing.rawValue)
        } catch MissingInfo.lastNameMissing {
            print(MissingInfo.lastNameMissing.rawValue)
        } catch MissingInfo.streetAddressMissing {
            print(MissingInfo.streetAddressMissing.rawValue)
        } catch MissingInfo.cityMissing {
            print(MissingInfo.cityMissing.rawValue)
        } catch MissingInfo.stateMissing {
            print(MissingInfo.stateMissing.rawValue)
        } catch MissingInfo.zipcodeMissing {
            print(MissingInfo.zipcodeMissing.rawValue)
        } catch let error {
            print(error.localizedDescription)
        }
        
        return nil
    }
    
    static func createRideServiceEmployeeWith(firstName: String?, lastName: String?, streetAddress: String?, city: String?, state: String?, zipCode: Int?) -> Pass? {
        let rideServiceEmployee: RideServiceEmployee
        do {
            rideServiceEmployee = try Entrants.createRideServiceEmployeeWith(firstName: firstName, lastName: lastName, streetAddress: streetAddress, city: city, state: state, zipCode: zipCode)
            return AmusementParkPass(entrant: rideServiceEmployee, areaAccess: rideServiceEmployee.employeeType.areaAccess(), rideAccess: rideServiceEmployee.employeeType.rideAccess(), discounts: rideServiceEmployee.employeeType.discounts())
        } catch MissingInfo.firstNameMissing {
            print(MissingInfo.firstNameMissing.rawValue)
        } catch MissingInfo.lastNameMissing {
            print(MissingInfo.lastNameMissing.rawValue)
        } catch MissingInfo.streetAddressMissing {
            print(MissingInfo.streetAddressMissing.rawValue)
        } catch MissingInfo.cityMissing {
            print(MissingInfo.cityMissing.rawValue)
        } catch MissingInfo.stateMissing {
            print(MissingInfo.stateMissing.rawValue)
        } catch MissingInfo.zipcodeMissing {
            print(MissingInfo.zipcodeMissing.rawValue)
        } catch let error {
            print(error.localizedDescription)
        }
        
        return nil
    }
    
    static func createMaintenanceEmployeeWith(firstName: String?, lastName: String?, streetAddress: String?, city: String?, state: String?, zipCode: Int?) -> Pass? {
        let maintenanceEmployee: MaintenanceEmployee
        do {
            maintenanceEmployee = try Entrants.createMaintenanceEmployeeWith(firstName: firstName, lastName: lastName, streetAddress: streetAddress, city: city, state: state, zipCode: zipCode)
            return AmusementParkPass(entrant: maintenanceEmployee, areaAccess: maintenanceEmployee.employeeType.areaAccess(), rideAccess: maintenanceEmployee.employeeType.rideAccess(), discounts: maintenanceEmployee.employeeType.discounts())
        } catch MissingInfo.firstNameMissing {
            print(MissingInfo.firstNameMissing.rawValue)
        } catch MissingInfo.lastNameMissing {
            print(MissingInfo.lastNameMissing.rawValue)
        } catch MissingInfo.streetAddressMissing {
            print(MissingInfo.streetAddressMissing.rawValue)
        } catch MissingInfo.cityMissing {
            print(MissingInfo.cityMissing.rawValue)
        } catch MissingInfo.stateMissing {
            print(MissingInfo.stateMissing.rawValue)
        } catch MissingInfo.zipcodeMissing {
            print(MissingInfo.zipcodeMissing.rawValue)
        } catch let error {
            print(error.localizedDescription)
        }
        
        return nil
    }
    
    static func createManagerWith(firstName: String?, lastName: String?, streetAddress: String?, city: String?, state: String?, zipCode: Int?) -> Pass? {
        let manager: Manager
        do {
            manager = try Entrants.createManagerWith(firstName: firstName, lastName: lastName, streetAddress: streetAddress, city: city, state: state, zipCode: zipCode)
            return AmusementParkPass(entrant: manager, areaAccess: manager.managerType.areaAccess(), rideAccess: manager.managerType.rideAccess(), discounts: manager.managerType.discounts())
        } catch MissingInfo.firstNameMissing {
            print(MissingInfo.firstNameMissing.rawValue)
        } catch MissingInfo.lastNameMissing {
            print(MissingInfo.lastNameMissing.rawValue)
        } catch MissingInfo.streetAddressMissing {
            print(MissingInfo.streetAddressMissing.rawValue)
        } catch MissingInfo.cityMissing {
            print(MissingInfo.cityMissing.rawValue)
        } catch MissingInfo.stateMissing {
            print(MissingInfo.stateMissing.rawValue)
        } catch MissingInfo.zipcodeMissing {
            print(MissingInfo.zipcodeMissing.rawValue)
        } catch let error {
            print(error.localizedDescription)
        }
        
        return nil
    }
}
