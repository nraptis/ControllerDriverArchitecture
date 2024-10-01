//
//  MyScreenCellView.swift
//  ControllerDriverArchitecture
//
//  Created by Nicky Taylor on 10/1/24.
//

import SwiftUI

struct MyScreenCellView: View {
    
    let controller: MyScreenController
    
    @Environment(MyScreenCellDriver.self) var driver
    
    var body: some View {
        print("Body for \(driver.item.emoji) @ \(driver.item.mutableData)")
        return ZStack {
            HStack {
                Spacer()
                VStack {
                    Spacer()
                    Text(driver.item.emoji)
                        .font(.system(size: 36.0))
                    Spacer()
                }
                Spacer()
            }
            HStack {
                Spacer()
                VStack {
                    Spacer()
                    Text("\(driver.item.mutableData)")
                        .font(.system(size: 28.0, weight: .semibold))
                        .foregroundStyle(Color.white)
                }
                Spacer()
            }
            GeometryReader { geometry in
                HStack(spacing: 0.0) {
                    Button {
                        Task {
                            await controller.mutateItem(item: driver.item)
                        }
                    } label: {
                        HStack(spacing: 0.0) {
                            Spacer()
                            Image(systemName: "dice")
                                .font(.system(size: 24.0))
                                .foregroundStyle(Color.white)
                            Spacer()
                        }
                        .frame(width: geometry.size.width / 2.0, height: 38.0)
                        .background(RoundedRectangle(cornerRadius: 6.0).foregroundStyle(Color.red))
                    }
                    Button {
                        Task {
                            await controller.deleteItem(item: driver.item)
                        }
                    } label: {
                        HStack(spacing: 0.0) {
                            Spacer()
                            Image(systemName: "trash")
                                .font(.system(size: 24.0))
                                .foregroundStyle(Color.white)
                            Spacer()
                        }
                        .frame(width: geometry.size.width / 2.0, height: 38.0)
                        .background(RoundedRectangle(cornerRadius: 6.0).foregroundStyle(Color.blue))
                    }

                }
                .frame(width: geometry.size.width, height: 24.0)
            }
            HStack {
                Spacer()
                VStack {
                    HStack {
                        Spacer()
                    }
                    .frame(height: 24.0)
                   
                    Spacer()
                }
                Spacer()
            }
        }
        .aspectRatio(0.75, contentMode: .fill)
        .background(RoundedRectangle(cornerRadius: 12.0).foregroundStyle(Color.randomDark))
    }
}

#Preview {
    MyScreenCellView(controller: MyScreenController())
        .environment(MyScreenCellDriver(item: Item(id: 0, emoji: "👻",  mutableData: 0)))
}
