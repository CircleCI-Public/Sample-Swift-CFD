//
//  removeFromCartButton.swift
//  SampleSwiftCfd
//
//  Created by Ryan Bourdais on 4/17/23.
//

import SwiftUI

struct RemoveFromCartButton: View {
    var food: Food
    @Binding var isInCart: Bool
    var body: some View {
        Button {
           isInCart = false
        }label: {
            Label("", systemImage: "trash")
        }
    }
}

struct RemoveFromCartButton_Previews: PreviewProvider {
    static var previews: some View {
        RemoveFromCartButton(food: ModelData().foods[1], isInCart: .constant(true))
    }
}
