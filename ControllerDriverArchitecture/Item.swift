//
//  Item.swift
//  ControllerDriverArchitecture
//
//  Created by Nicky Taylor on 10/1/24.
//

import Foundation

struct Item {
    let id: Int
    let emoji: String
    var mutableData: Int
}

extension Item: Identifiable {
    
}

extension Item: Equatable {
    static func == (lhs: Self, rhs: Self) -> Bool {
        lhs.id == rhs.id && lhs.mutableData == rhs.mutableData
    }
}

extension Item: Hashable {
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

func generateAllItems() -> [Item] {
    [
        .init(id: 5, emoji: "👻", mutableData: 0),
        .init(id: 9, emoji: "🎃", mutableData: 0),
        .init(id: 14, emoji: "🏰", mutableData: 0),
        .init(id: 29, emoji: "🔥", mutableData: 0),
        .init(id: 47, emoji: "👑", mutableData: 0),
        .init(id: 58, emoji: "⭐", mutableData: 0),
        .init(id: 66, emoji: "💣", mutableData: 0),
        .init(id: 67, emoji: "🤖", mutableData: 0),
        .init(id: 82, emoji: "🧟", mutableData: 0),
        .init(id: 91, emoji: "👠", mutableData: 0),
        .init(id: 100, emoji: "🎮", mutableData: 0),
        .init(id: 218, emoji: "🍄", mutableData: 0),
        .init(id: 312, emoji: "🐠", mutableData: 0),
        .init(id: 344, emoji: "👙", mutableData: 0),
        .init(id: 358, emoji: "🥳", mutableData: 0),
        .init(id: 389, emoji: "🎂", mutableData: 0),
        .init(id: 413, emoji: "🚑", mutableData: 0),
        .init(id: 421, emoji: "⛩️", mutableData: 0),
        .init(id: 438, emoji: "🫵", mutableData: 0),
        .init(id: 512, emoji: "🤓", mutableData: 0),
        .init(id: 513, emoji: "❤️‍🩹", mutableData: 0),
        .init(id: 529, emoji: "🤡", mutableData: 0),
        .init(id: 559, emoji: "💬", mutableData: 0),
        .init(id: 592, emoji: "🚀", mutableData: 0),
        .init(id: 600, emoji: "⚡", mutableData: 0),
        .init(id: 616, emoji: "🎀", mutableData: 0),
        .init(id: 628, emoji: "😈", mutableData: 0),
        .init(id: 630, emoji: "🎉", mutableData: 0),
        .init(id: 644, emoji: "🎱", mutableData: 0),
        .init(id: 647, emoji: "🃏", mutableData: 0),
        .init(id: 648, emoji: "🎨", mutableData: 0),
        .init(id: 653, emoji: "🎹", mutableData: 0),
        .init(id: 658, emoji: "💰", mutableData: 0),
        .init(id: 661, emoji: "💯", mutableData: 0),
        .init(id: 684, emoji: "☀️", mutableData: 0),
        .init(id: 699, emoji: "💔", mutableData: 0),
        .init(id: 706, emoji: "🏆", mutableData: 0),
        .init(id: 726, emoji: "💎", mutableData: 0),
        .init(id: 727, emoji: "👓", mutableData: 0),
        .init(id: 728, emoji: "🎩", mutableData: 0),
        .init(id: 733, emoji: "🎓", mutableData: 0),
        .init(id: 738, emoji: "🧠", mutableData: 0),
        .init(id: 751, emoji: "🗿", mutableData: 0),
        .init(id: 757, emoji: "🙏", mutableData: 0),
        .init(id: 783, emoji: "🎶", mutableData: 0),
        .init(id: 785, emoji: "🖤", mutableData: 0),
        .init(id: 790, emoji: "🎉", mutableData: 0),
        .init(id: 793, emoji: "🗓️", mutableData: 0),
        .init(id: 798, emoji: "✨", mutableData: 0),
        .init(id: 811, emoji: "❤️‍🔥", mutableData: 0),
        .init(id: 816, emoji: "👀", mutableData: 0),
        .init(id: 878, emoji: "💥", mutableData: 0),
        .init(id: 895, emoji: "📢", mutableData: 0),
        .init(id: 904, emoji: "💡", mutableData: 0),
        .init(id: 932, emoji: "🪬", mutableData: 0),
        .init(id: 986, emoji: "⚽", mutableData: 0),
    ]
}
