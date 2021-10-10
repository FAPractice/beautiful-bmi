//
//  WeightView.swift
//  Shared
//
//  Created by Harsh Chaturvedi on 10/10/21.
//

import SwiftUI

struct WeightView: View {
    @ObservedObject var controller: Controller
    var body: some View {
        GeometryReader {geo in
            VStack {
                
                Text("How Heavy Are You?")
                    .font(Font.title.weight(.light))
                Text("Enter your weight!")
                    .font(.body)
                    .fontWeight(.bold)
                Spacer()
                
                Stepper("\(controller.weight) kg", value: $controller.weight)
                
                Spacer()
                
                Image("weight")
                    .resizable()
                    .scaledToFit()
                
                Spacer()
                NavigationLink {
                    ResultsView(controller: controller)
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
                                .frame(width: abs(geo.size.width - 40))
                        )
                }
            }
        }.padding()
    }
}
