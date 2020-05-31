//
//  Food.swift
//  TurboShop
//
//  Created by Xander Eagle on 5/30/20.
//  Copyright © 2020 Xander Eagle. All rights reserved.
//

import Foundation

struct Food {
    var symbol: String
    var name: String
    var location: String

init(symbol: String, name: String, location: String) {
    self.symbol = symbol
    self.name = name
    self.location = location
}
}
