//
//  Color+Random.swift
//  ControllerDriverArchitecture
//
//  Created by Nicky Taylor on 10/1/24.
//

import SwiftUI

extension Color {
    
    static var randomLight: Self {
        Color(red: Double.random(in: 0.6...1.0),
              green: Double.random(in: 0.6...1.0),
              blue: Double.random(in: 0.6...1.0))
    }
    
    static var randomDark: Self {
        Color(red: Double.random(in: 0.0...0.4),
              green: Double.random(in: 0.0...0.4),
              blue: Double.random(in: 0.0...0.4))
    }
    
    
}
