//
//  Benefit.swift
//  PassGenerator
//
//  Created by Dipanshu Sehrawat on 20/04/19.
//  Copyright © 2019 Dipanshu Sehrawat. All rights reserved.
//

import Foundation

enum Benefit: Equatable {
    case amusementAreaAccess
    case allRidesAccess
    case skipRideLines
    case kitchenAreaAccess
    case rideControlAreaAccess
    case maintenanceAreaAccess
    case officeAreaAccess
    case foodDiscount(percentage: Int)
    case merchandiseDiscount(percentage: Int)
}
