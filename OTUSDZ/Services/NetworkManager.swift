//
//  NetworkManaging.swift
//  OTUSDZ
//
//  Created by Вячеслав Вовк on 20.01.2025.
//


import SwiftUI
import Network


protocol NetworkManagerProtocol {
    var isConnected: Bool { get }
    func startMonitoring()
    func stopMonitoring()
}


class NetworkManager: NetworkManagerProtocol, ObservableObject {
    private var monitor: NWPathMonitor
    private var queue = DispatchQueue.global(qos: .background)

    @Published var isConnected: Bool = false

    init() {
        monitor = NWPathMonitor()
    }

    deinit {
        stopMonitoring()
    }
    
    func startMonitoring() {
        monitor.pathUpdateHandler = { [weak self] path in
            DispatchQueue.main.async {
                self?.isConnected = path.status == .satisfied
            }
        }
        monitor.start(queue: queue)
    }
    
    func stopMonitoring() {
        monitor.cancel()
    }
}
