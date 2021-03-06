//
//  HeightView.swift
//  Shared
//
//  Created by Harsh Chaturvedi on 10/10/21.
//

import SwiftUI

struct HeightView: View {
    @ObservedObject var controller: Controller
    var body: some View {
        GeometryReader {geo in
            VStack {
                
                Text("How High Are You?")
                    .font(Font.title.weight(.light))
                Text("Enter your height!")
                    .font(.body)
                    .fontWeight(.bold)
                Spacer()
                
                Stepper("\(controller.height) cm", value: $controller.height)
                
                Spacer()
                
                Image("height")
                    .resizable()
                    .scaledToFit()
                
                Spacer()
                NavigationLink {
                    WeightView(controller: controller)
                } label: {
                    Text("Next")
                        .foregroundColor(.white)
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 12.0)
                                .foregroundColor(.accentColor)
                                .shadow(
                                    color: Color.black.opacity(0.4),
                                    radius: 40, x: 0, y: 12
                                )
                                .frame(width: abs(geo.size.width))
                        )
                }
            }
        }.padding()
    }
}
