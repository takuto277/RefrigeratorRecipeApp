//
//  Item.swift
//  RefrigeratorRecipeApp
//
//  Created by 小野拓人 on 2024/06/04.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
