//
//  Beautiful_BMIApp.swift
//  Shared
//
//  Created by Harsh Chaturvedi on 10/10/21.
//

import SwiftUI

@main
struct Beautiful_BMIApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView{
                HeightView(controller: Controller())
            }
        }
    }
}
