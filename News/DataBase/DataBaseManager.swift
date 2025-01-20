//
//  DataBaseManager.swift
//  OTUSDZ
//
//  Created by Вячеслав Вовк on 20.01.2025.
//
import SwiftUI
import CoreData


protocol NewsDataManagerProtocol {
    func addNewArticle(data: NewProtocol, isFav: Bool)
    func addNewBlog(data: NewProtocol, isFav: Bool)
    func addNewReport(data: NewProtocol, isFav: Bool)
}


class NewsDataManager: ObservableObject, NewsDataManagerProtocol {
    
    private let viewContext = PersistenceController.shared.container.viewContext
    
    func addNewArticle(data: NewProtocol, isFav: Bool) {
        let newArticle = ArticleEntity(context: viewContext)
        newArticle.data = data
        newArticle.isFav = isFav
        
        viewContext.saveContext()
    }
    
    func addNewBlog(data: NewProtocol, isFav: Bool) {
        let newBlog = BlogEntity(context: viewContext)
        newBlog.data = data
        newBlog.isFav = isFav
        
        viewContext.saveContext()
    }
    
    func addNewReport(data: NewProtocol, isFav: Bool) {
        let newReport = ReportEntity(context: viewContext)
        newReport.data = data
        newReport.isFav = isFav
        
        viewContext.saveContext()
    }
    
}


extension NSManagedObjectContext {
    func saveContext() {
        do {
            try save()
            print("News article saved successfully.")
        } catch {
            print("Error saving news article: $$error.localizedDescription)")
        }
    }
}
