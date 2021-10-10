//
//  ResultsView.swift
//  Beautiful BMI
//
//  Created by Harsh Chaturvedi on 10/10/21.
//

import SwiftUI

struct ResultsView: View {
    @ObservedObject var controller: Controller
    var body: some View {
        GeometryReader {geo in
            VStack {
                
                Text("Here's your BMI!")
                    .font(Font.title.weight(.light))
                Text("Your BMI is: \(controller.bmi, specifier:"%.2f")")
                    .font(.body)
                    .fontWeight(.bold)
                Spacer()
                
                Image("results")
                    .resizable()
                    .scaledToFit()
                
                Spacer()
                NavigationLink {
                    HeightView(controller: controller)
                } label: {
                    Text("Start Again")
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
        }
    }
}
