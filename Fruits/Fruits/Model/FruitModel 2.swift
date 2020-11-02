//
//  FruitModel.swift
//  Fruits
//
//  Created by Julieth Angel on 10/25/20.
//

import SwiftUI

struct Fruit: Identifiable{
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
