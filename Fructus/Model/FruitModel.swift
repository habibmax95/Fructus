//
//  FruitModel.swift
//  Fructus
//
//  Created by Office on 26/06/2021.
//

import Foundation
import SwiftUI

struct FruitModel: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
