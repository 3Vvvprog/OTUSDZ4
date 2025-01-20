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
        ServiceLocator.shared.addService(service: NetworkManager() as NetworkManagerProtocol)
        ServiceLocator.shared.addService(service: NewsDataManager() as NewsDataManagerProtocol)
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

