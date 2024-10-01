//
//  NetworkService.swift
//  OTUSDZ
//
//  Created by Вячеслав Вовк on 29.09.2024.
//

import SwiftUI
import OpenAPI5

protocol NetworkServiceProtocol {
    func f1() -> String
    func loadArticles(offset: Int) -> Task<[NewProtocolCell], Never>
    func loadBlogs(offset: Int) -> Task<[NewProtocolCell], Never>
    func loadReports(offset: Int) -> Task<[NewProtocolCell], Never>
}

final class NetworkService: NetworkServiceProtocol {
    
    func f1() -> String {
        return "S1 OK"
    }
    
    func loadArticles(offset: Int) -> Task<[NewProtocolCell], Never> {
        Task {
            let result = try? await ArticlesAPI.articlesList(limit: 10, offset: offset)
            if let result {
                return result.results.map({ NewProtocolCell(new: $0) })
            }else {
                return []
            }
        }
    }
    
    func loadBlogs(offset: Int) -> Task<[NewProtocolCell], Never> {
        Task {
            let result = try? await BlogsAPI.blogsList(limit: 10, offset: offset)
            if let result {
                return result.results.map({ NewProtocolCell(new: $0) })
            }else {
                return []
            }
        }
    }
    
    func loadReports(offset: Int) -> Task<[NewProtocolCell], Never> {
        Task {
            let result = try? await ReportsAPI.reportsList(limit: 10, offset: offset)
            if let result {
                return result.results.map({ NewProtocolCell(new: $0) })
            }else {
                return []
            }
        }
    }
}

