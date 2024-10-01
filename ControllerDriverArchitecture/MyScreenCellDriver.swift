//
//  MyScreenCellDriver.swift
//  ControllerDriverArchitecture
//
//  Created by Nicky Taylor on 10/1/24.
//

import Foundation

@MainActor
@Observable
class MyScreenCellDriver {
    var item: Item
    let id: Int
    init(item: Item) {
        self.item = item
        self.id = item.id
    }
}

extension MyScreenCellDriver: Equatable {
    nonisolated static func == (lhs: MyScreenCellDriver, rhs: MyScreenCellDriver) -> Bool {
        lhs.id == rhs.id
    }
}

extension MyScreenCellDriver: Identifiable {
    
}

