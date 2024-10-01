//
//  NewsProtocol.swift
//  OTUSDZ2
//
//  Created by Вячеслав Вовк on 21.09.2024.
//

import Foundation

protocol NewsProtocol {
    var id: Int { get set }
    var title: String { get set }
    var url: String { get set }
    var imageUrl: String { get set }
    var newsSite: String { get set }
    var summary: String? { get set }
    var publishedAt: Date { get set }
    var updatedAt: Date { get set }
}
