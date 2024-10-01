//
//  OTUSDZApp.swift
//  OTUSDZ
//
//  Created by Вячеслав Вовк on 19.09.2024.
//

import SwiftUI

@main
struct OTUSDZApp: App {
    
    init() {
        ServiceLocator.shared.addService(service: NetworkService() as NetworkServiceProtocol)
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
