//
//  ImageView.swift
//  SampleSwiftCfd
//
//  Created by Ryan Bourdais on 4/14/23.
//

import SwiftUI

struct ImageView: View {
    var image: Image
    
    var body: some View {
       image
            .resizable()
            .scaledToFit()
            .frame(width: 250, height:250)
            .shadow(radius: 7)
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(image: Image("hamburger"))
    }
}
