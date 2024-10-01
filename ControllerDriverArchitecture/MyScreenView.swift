//
//  ContentView.swift
//  ControllerDriverArchitecture
//
//  Created by Nicky Taylor on 10/1/24.
//

import SwiftUI

struct MyScreenView: View {
    
    let controller: MyScreenController
    
    @Environment(MyScreenDriver.self) var driver
    
    var body: some View {
        VStack(spacing: 0.0) {
            HStack {
                Button {
                    Task {
                        await controller.addItem()
                    }
                } label: {
                    HStack(spacing: 0.0) {
                        Spacer()
                        Image(systemName: "plus")
                            .font(.system(size: 24.0))
                            .foregroundStyle(Color.white)
                        Spacer()
                    }
                    .frame(height: 54.0)
                    .background(RoundedRectangle(cornerRadius: 6.0).foregroundStyle(Color.orange))
                    .padding(.horizontal, 12.0)
                }
            }
            .frame(height: 54.0)
            
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 98.0, maximum: 98.0), spacing: 0.0)], spacing: 0.0) {
                    ForEach(driver.cellDrivers) { cellDriver in
                        MyScreenCellView(controller: controller)
                            .environment(cellDriver)
                    }
                }
            }
        }
        .background(Color.randomDark)
    }
}

#Preview {
    MyScreenView(controller: MyScreenController())
        .environment(MyScreenController().driver)
}
