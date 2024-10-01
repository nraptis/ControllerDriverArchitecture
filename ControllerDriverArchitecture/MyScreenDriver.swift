//
//  MyScreenDriver.swift
//  ControllerDriverArchitecture
//
//  Created by Nicky Taylor on 10/1/24.
//

import Foundation

@MainActor
@Observable
class MyScreenDriver {
    
    @ObservationIgnored var cellBank = [Int: MyScreenCellDriver]()
    var cellDrivers = [MyScreenCellDriver]()
    
    func sync(items: [Item]) {
        
        for driver in cellDrivers {
            cellBank[driver.id] = driver
        }
        cellDrivers.removeAll()
        for item in items {
            if let driver = cellBank[item.id] {
                cellDrivers.append(driver)
            } else {
                let driver = MyScreenCellDriver(item: item)
                cellDrivers.append(driver)
            }
        }
        
    }
    
    func mutateItem(item: Item) {
        for cellDriver in cellDrivers {
            if cellDriver.item.id == item.id {
                cellDriver.item.mutableData = Int.random(in: 0...100)
            }
        }
    }
    
}
