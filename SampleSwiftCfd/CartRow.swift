//
//  CartRow.swift
//  SampleSwiftCfd
//
//  Created by Ryan Bourdais on 4/17/23.
//

import SwiftUI

struct CartRow: View {
    @EnvironmentObject var modelData: ModelData
    var food: Food
    var foodIndex: Int {
        modelData.foods.firstIndex(where: {$0.id == food.id})!
    }
    var body: some View {
        HStack {
            food.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(food.name)
            Spacer()
            Text("$\(food.cost)")
            RemoveFromCartButton(food: food, isInCart: $modelData.foods[foodIndex].cart)
        }.padding(.horizontal, 10.0)
    }
}

struct CartRow_Previews: PreviewProvider {
    static var foods = ModelData().foods
    static let modelData = ModelData()
    static var previews: some View {
        Group {
            CartRow(food: foods[0]).environmentObject(modelData)
            CartRow(food: foods[1]).environmentObject(modelData)
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
