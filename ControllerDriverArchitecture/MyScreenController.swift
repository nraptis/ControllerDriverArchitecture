//
//  MyScreenController.swift
//  ControllerDriverArchitecture
//
//  Created by Nicky Taylor on 10/1/24.
//

import Foundation

actor MyScreenController {
    
    @MainActor var driver = MyScreenDriver()
    
    var itemsActive = [Item]()
    var itemsPool = [Item]()
    
    @MainActor init () {
        
        let allItems = generateAllItems()
        
        var itemIndex = 0
        while itemIndex < allItems.count && itemIndex < 16 {
            let item = allItems[itemIndex]
            itemsActive.append(item)
            itemIndex += 1
        }
        
        while itemIndex < allItems.count {
            let item = allItems[itemIndex]
            itemsPool.append(item)
            itemIndex += 1
        }
        
        driver.sync(items: itemsActive)
    }
    
    func addItem() {
        itemsPool.shuffle()
        if let item = itemsPool.popLast() {
            itemsActive.append(item)
            Task { @MainActor in
                await driver.sync(items: itemsActive)
            }
        }
    }
    
    func deleteItem(item: Item) {
        for itemIndex in 0..<itemsActive.count {
            if itemsActive[itemIndex] == item {
                itemsPool.append(itemsActive[itemIndex])
                itemsActive.remove(at: itemIndex)
                Task { @MainActor in
                    await driver.sync(items: itemsActive)
                }
                return
            }
        }
    }
    
    func mutateItem(item: Item) {
        Task { @MainActor in
            driver.mutateItem(item: item)
        }
    }
    
    
}
