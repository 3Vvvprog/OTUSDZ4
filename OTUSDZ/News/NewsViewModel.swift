//
//  NewsViewModel.swift
//  OTUSDZ2
//
//  Created by Вячеслав Вовк on 19.09.2024.
//

import Foundation
import SwiftUI

enum NewsType: CaseIterable {
    case articles, blogs, reports
    
    var label: String {
        switch self {
        case .articles: return "Articles"
        case .blogs: return "Blogs"
        case .reports: return "Reports"
        }
    }
    
}

struct NewProtocolCell {
    var new: NewsProtocol
    var isFav: Bool = false
    
    mutating func changeFav() {
        isFav.toggle()
    }
}

final class NewsViewModel: ObservableObject {
    @Published var loadedArticles: [NewProtocolCell] = []
    @Published var loadedBlogs: [NewProtocolCell] = []
    @Published var loadedReports: [NewProtocolCell] = []
    @Published var offsetArticle = 10
    @Published var offsetBlog = 0
    @Published var offsetReport = 0
    
    func initial() {
        Task { @MainActor in
            let result = try? await ArticlesAPI.articlesList(limit: 10, offset: offsetArticle)
            if let result {
                self.loadedArticles = result.results.map({ NewProtocolCell(new: $0) })
            }
        }
        
        Task { @MainActor in
            let result = try? await BlogsAPI.blogsList(limit: 10, offset: offsetArticle)
            if let result {
                self.loadedBlogs = result.results.map({ NewProtocolCell(new: $0) })
            }
        }
        
        Task { @MainActor in
            let result = try? await ReportsAPI.reportsList(limit: 10, offset: offsetArticle)
            if let result {
                self.loadedReports = result.results.map({ NewProtocolCell(new: $0) })
            }
        }
    }
    
    
    
    func loadNextPageOfArticles() {
        offsetArticle += 10
        Task {
            let result = try? await ArticlesAPI.articlesList(limit: 10, offset: offsetArticle)
            if let result {
                DispatchQueue.main.async {
                    self.loadedArticles.append(contentsOf: result.results.map({ NewProtocolCell(new: $0) }))
                }
            }
        }
        print(offsetArticle)
    }
    
    func loadNextPageOfBlogs() {
        offsetBlog += 10
        Task {
            let result = try? await BlogsAPI.blogsList(limit: 10, offset: offsetBlog)
            if let result {
                DispatchQueue.main.async {
                    self.loadedBlogs.append(contentsOf: result.results.map({ NewProtocolCell(new: $0) }))
                }
            }
        }
        print(offsetBlog)
    }
    
    func loadNextPageOfReports() {
        offsetReport += 10
        Task {
            let result = try? await ReportsAPI.reportsList(limit: 10, offset: offsetReport)
            if let result {
                DispatchQueue.main.async {
                    self.loadedReports.append(contentsOf: result.results.map({ NewProtocolCell(new: $0) }))
                }
            }
        }
        print(offsetReport)
    }
    
    func changeFav(_ new: NewProtocolCell, newType: NewsType) {
        switch newType {
        case .articles:
            let index = self.loadedArticles.firstIndex(where: { $0.new.id == new.new.id })!
            self.loadedArticles[index].changeFav()
        case .blogs:
            let index = self.loadedBlogs.firstIndex(where: { $0.new.id == new.new.id })!
            self.loadedBlogs[index].changeFav()
        case .reports:
            let index = self.loadedReports.firstIndex(where: { $0.new.id == new.new.id })!
            self.loadedReports[index].changeFav()
        }
    }
}
