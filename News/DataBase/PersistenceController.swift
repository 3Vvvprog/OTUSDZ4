//
//  PersistenceController.swift
//  OTUSDZ
//
//  Created by Вячеслав Вовк on 20.01.2025.
//


import Foundation
import CoreData
import OpenAPI5

class PersistenceController {
    static let shared = PersistenceController()

    let container: NSPersistentContainer

    init() {
        container = NSPersistentContainer(name: "NewsDB")
        container.loadPersistentStores { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error $$error), $$error.userInfo)")
            }
        }
    }

    func saveContext() {
        let context = container.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                let nserror = error as NSError
                fatalError("Unresolved error $$nserror), $$nserror.userInfo)")
            }
        }
    }
}



public class NewProtocol: NSObject, NewsProtocol {
    public var id: Int
    public var title: String
    public var url: String
    public var imageUrl: String
    public var newsSite: String
    public var summary: String?
    public var publishedAt: Date
    public var updatedAt: Date
    
    init(id: Int, title: String, url: String, imageUrl: String, newsSite: String, summary: String? = nil, publishedAt: Date, updatedAt: Date) {
        self.id = id
        self.title = title
        self.url = url
        self.imageUrl = imageUrl
        self.newsSite = newsSite
        self.summary = summary
        self.publishedAt = publishedAt
        self.updatedAt = updatedAt
    }
}
