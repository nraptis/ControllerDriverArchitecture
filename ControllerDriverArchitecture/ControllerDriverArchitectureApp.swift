//
//  ControllerDriverArchitectureApp.swift
//  ControllerDriverArchitecture
//
//  Created by Nicky Taylor on 10/1/24.
//

import SwiftUI

@main
struct ControllerDriverArchitectureApp: App {
    
    let controller = MyScreenController()
    
    var body: some Scene {
        WindowGroup {
            MyScreenView(controller: controller)
                .environment(controller.driver)
        }
    }
}
