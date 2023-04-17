//
//  FoodDetail.swift
//  SampleSwiftCfd
//
//  Created by Ryan Bourdais on 4/14/23.
//

import SwiftUI

struct FoodDetail: View {
    @EnvironmentObject var modelData: ModelData
    var food: Food
    var foodIndex: Int {
        modelData.foods.firstIndex(where: {$0.id == food.id})!
    }
    var body: some View {
        VStack {
            Background()
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            ImageView(image: food.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .center) {
                Text(food.name)
                    .font(.title)
                HStack {
                    Text(food.description)
                        .font(.subheadline)
                        .multilineTextAlignment(.center)
                    Spacer()
                }
                Divider()
                Text("Cost:")
                    .font(.title)
                    .multilineTextAlignment(.center)
                Text("$\(food.cost)")
                    .font(.title2)
                    .multilineTextAlignment(.center)
            }
            .padding()
            Spacer()
            HStack {
                Text("")
                    .font(.title)
                AddToCartButton(food: food, isInCart: $modelData.foods[foodIndex].cart)
            }
        }
        .padding()
        .navigationTitle(food.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct FoodDetail_Previews: PreviewProvider {
    static let modelData = ModelData()
    static var previews: some View {
        FoodDetail(food: modelData.foods[0]).environmentObject(modelData)
    }
}
