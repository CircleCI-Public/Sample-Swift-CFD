//
//  Food.swift
//  SampleSwiftCfd
//
//  Created by Ryan Bourdais on 4/14/23.
//

import Foundation
import SwiftUI

struct Food: Hashable, Codable, Identifiable {
    var id: Int
    var cost: Int
    var name: String
    var description: String
    var quantity: Int
    var cart: Bool
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
}
