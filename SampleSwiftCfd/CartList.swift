//
//  FoodList.swift
//  SampleSwiftCfd
//
//  Created by Ryan Bourdais on 4/14/23.
//

import SwiftUI

struct CartList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showQuantityGreaterZero = true
    
    var filteredFood: [Food] {
        modelData.foods.filter { food in
            (!showQuantityGreaterZero || food.cart)
        }
    }
    var total: Int {
        var currentTotal = 0
        for food in filteredFood{
            currentTotal = currentTotal + food.cost
        }
        return currentTotal
    }
    var body: some View {
        VStack{
            NavigationView {
                List(filteredFood) { food in
                    CartRow(food: food)
                }
                .navigationTitle("Cart")
            }
            Text("Total: $\(total)")
                .padding(.bottom, 100.0)
        }
    }
}


struct CartList_Previews: PreviewProvider {
    static var previews: some View {
        CartList().environmentObject(ModelData())
    }
}
