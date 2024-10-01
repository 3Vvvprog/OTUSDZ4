//
//  NewsViewModel.swift
//  OTUSDZ
//
//  Created by Вячеслав Вовк on 19.09.2024.
//

import Foundation
import SwiftUI
import OpenAPI5

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
    
    var networkService: NetworkServiceProtocol? = ServiceLocator.shared.getService()
    
    @Published var loadedArticles: [NewProtocolCell] = []
    @Published var loadedBlogs: [NewProtocolCell] = []
    @Published var loadedReports: [NewProtocolCell] = []
    @Published var offsetArticle = 10
    @Published var offsetBlog = 0
    @Published var offsetReport = 0
    
    func initial() {
        guard let networkService else { return }
        Task { @MainActor in
            self.loadedArticles = await networkService.loadArticles(offset: offsetArticle).value
        }
        Task { @MainActor in
            self.loadedBlogs = await networkService.loadBlogs(offset: offsetBlog).value
        }
        
        Task { @MainActor in
            self.loadedReports = await networkService.loadReports(offset: offsetReport).value
        }
    }
    
    
    
    func loadNextPageOfArticles() {
        offsetArticle += 10
        Task { @MainActor in
            var result = await networkService?.loadArticles(offset: offsetArticle).value
            if let result = result {
                self.loadedArticles += result
            }
            
        }
        print(offsetArticle)
    }
    
    func loadNextPageOfBlogs() {
        offsetBlog += 10
        Task { @MainActor in
            var result = await networkService?.loadBlogs(offset: offsetBlog).value
            if let result = result {
                self.loadedBlogs += result
            }
            
        }
        print(offsetBlog)
    }
    
    func loadNextPageOfReports() {
        offsetReport += 10
        Task { @MainActor in
            var result = await networkService?.loadReports(offset: offsetReport).value
            if let result = result {
                self.loadedReports += result
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
