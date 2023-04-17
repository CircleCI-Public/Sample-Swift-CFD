//
//  AddToCartButton.swift
//  SampleSwiftCfd
//
//  Created by Ryan Bourdais on 4/17/23.
//

import SwiftUI

struct AddToCartButton: View {
    var food: Food
    @Binding var isInCart: Bool
    var body: some View {
        Button {
           isInCart = true
        }label: {
            Label(food.cart ? "Added to Cart" : "Add To Cart", systemImage: "")
        }.buttonStyle(.bordered)
    }
}
struct AddToCartButton_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartButton(food: ModelData().foods[1], isInCart: .constant(true))
    }
}
