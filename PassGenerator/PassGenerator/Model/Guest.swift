//
//  Guest.swift
//  PassGenerator
//
//  Created by Dipanshu Sehrawat on 21/04/19.
//  Copyright © 2019 Dipanshu Sehrawat. All rights reserved.
//

import Foundation

extension GuestType {
    func areaAccess() -> [AreaAccess] {
        switch self {
        case .child, .classic, .vip: return [.amusement]
        }
    }
    
    func rideAccess() -> [RideAccess] {
        switch self {
        case .child, .classic: return [.allRides]
        case .vip: return [.allRides, .skipAllLines]
        }
    }
    
    func discounts() -> [Discounts] {
        switch self {
        case .vip: return [.food(percentage: 10), .merchandise(percentage: 20)]
        case .child, .classic: return []
        }
    }
}

class Guest: Person {
    let personType: PersonType = .guest
    var seconds = 5
    
    override func swipe(_ pass: AmusementParkPass, on area: AreaAccess) {
        if pass.areaAccess.contains(area) {
            Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { (timer) in
                guard self.seconds != 0 else {
                    timer.invalidate()
                    self.seconds = 5
                    return
                }
                self.seconds -= 1
            })
            
            if seconds == 5 {
                print("Access Granted")
            } else {
                print("Please wait 5 seconds")
            }
            
        } else {
            print("Access Denied")
        }
    }
}

class ClassicGuest: Guest {
    let guestType: GuestType = .classic
    init() {
        super.init(firstName: nil, lastName: nil, dateOfBirth: nil, ssn: nil, project: nil, company: nil, streetAddress: nil, city: nil, state: nil, zipCode: nil)
    }
}

class VIPGuest: Guest {
    let guestType: GuestType = .vip
    init() {
        super.init(firstName: nil, lastName: nil, dateOfBirth: nil, ssn: nil, project: nil, company: nil, streetAddress: nil, city: nil, state: nil, zipCode: nil)
    }
}

class ChildGuest: Guest {
    let guestType: GuestType = .child
    init(dateOfBirth: Date) {
        super.init(firstName: nil, lastName: nil, dateOfBirth: dateOfBirth, ssn: nil, project: nil, company: nil, streetAddress: nil, city: nil, state: nil, zipCode: nil)
    }
}
