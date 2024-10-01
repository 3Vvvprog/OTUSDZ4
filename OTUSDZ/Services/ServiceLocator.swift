//
//  ServiceLocator.swift
//  OTUSDZ
//
//  Created by Вячеслав Вовк on 30.09.2024.
//

import Foundation

protocol ServiceLocatorProtocol {
    func getService<T>() -> T?
}

final class ServiceLocator: ServiceLocatorProtocol {

    static let shared = ServiceLocator()
    // Service registry
    private lazy var reg: Dictionary<String, Any> = [:]

    private func typeName(some: Any) -> String {
        return (some is Any.Type) ? "\(some)" : "\(type(of: some))"
    }

    func addService<T>(service: T) {
        let key = typeName(some: T.self)
        reg[key] = service
        print("Service added: \(key) : \(typeName(some: service))")
    }

    func getService<T>() -> T? {
        let key = typeName(some: T.self)
        print(key)
        return reg[key] as? T
    }

}
