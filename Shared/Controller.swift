//
//  Controller.swift
//  Beautiful BMI
//
//  Created by Harsh Chaturvedi on 10/10/21.
//

import Foundation

class Controller: ObservableObject {
    @Published var height: Int = 150
    @Published var weight: Int = 50
    var bmi: Double {
        Double (weight) / (Double(height)/100) * (Double(height)/100)
    }
}
