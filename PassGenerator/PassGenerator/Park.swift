//
//  Park.swift
//  PassGenerator
//
//  Created by Dipanshu Sehrawat on 21/04/19.
//  Copyright © 2019 Dipanshu Sehrawat. All rights reserved.
//

import Foundation

class Park {
    static func park() -> [Pass]? {
        var childPass: Pass
//        var invalidChildPass: Pass
        var classicGuestPass: Pass
        var vipGuestPass: Pass
        var managerPass: Pass
//        var invalidManagerPass: Pass
        var rideServiceEmployeePass: Pass
//        var invalidFoodServiceEmployeePass: Pass
        var maintenanceEmployeePass: Pass
        var foodServiceEmployeePass: Pass
        
        do {
            childPass = try CreatePass.createChildGuestPassWith(dateOfBith: Date())
//            invalidChildPass = try CreatePass.createChildGuestPassWith(dateOfBith: nil)
            classicGuestPass = try CreatePass.createClassicGuestPassWith()
            vipGuestPass = try CreatePass.createVipGuestPassWith()
            managerPass = try CreatePass.createManagerWith(firstName: "Dipanshu", lastName: "Sehrawat", streetAddress: "123 some street", city: "Delhi", state: "Delhi", zipCode: 110001)
//            invalidManagerPass = try CreatePass.createManagerWith(firstName: nil, lastName: nil, streetAddress: nil, city: nil, state: nil, zipCode: nil)
            rideServiceEmployeePass = try CreatePass.createRideServiceEmployeeWith(firstName: "Steve", lastName: "Smith", streetAddress: "234 av", city: "Bengaluru", state: "Karnataka", zipCode: 455633)
//            invalidFoodServiceEmployeePass = try CreatePass.createFoodServiceEmployeeWith(firstName: nil, lastName: nil, streetAddress: nil, city: nil, state: nil, zipCode: nil)
            maintenanceEmployeePass = try CreatePass.createMaintenanceEmployeeWith(firstName: "Adam", lastName: "Kumar", streetAddress: "456 some street", city: "some city", state: "some state", zipCode: 13434)
            foodServiceEmployeePass = try CreatePass.createFoodServiceEmployeeWith(firstName: "some name", lastName: "some last name", streetAddress: "another street", city: "another city", state: "another city", zipCode: 343345)
            return [childPass, classicGuestPass, vipGuestPass, managerPass, rideServiceEmployeePass, maintenanceEmployeePass, foodServiceEmployeePass] // + [invalidChildPass, invalidManagerPass, invalidFoodServiceEmployeePass]
        } catch PassError.invalidPass {
            print("Pass cannot be created")
        } catch let error {
            print(error.localizedDescription)
        }
        
        return nil
    }
    
    
}
