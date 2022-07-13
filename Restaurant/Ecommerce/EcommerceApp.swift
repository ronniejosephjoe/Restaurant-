
//
//  EcommerceApp.swift
//  Ecommerce
//
//  Created by RJ on 13/07/22.
//

import SwiftUI

@main
struct EcommerceApp: App {
    @EnvironmentObject var  use:variables
    var body: some Scene {
        WindowGroup {
            MotherView().environmentObject(variables())
        }
    }
}
