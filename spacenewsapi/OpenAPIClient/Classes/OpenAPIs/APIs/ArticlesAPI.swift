//
// ArticlesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class ArticlesAPI {

    /**

     - parameter event: (query) Search for all documents related to a specific event using its Launch Library 2 ID. (optional)
     - parameter hasEvent: (query) Get all documents that have a related event. (optional)
     - parameter hasLaunch: (query) Get all documents that have a related launch. (optional)
     - parameter isFeatured: (query) Get all documents that are featured. (optional)
     - parameter launch: (query) Search for all documents related to a specific launch using its Launch Library 2 ID. (optional)
     - parameter limit: (query) Number of results to return per page. (optional)
     - parameter newsSite: (query) Search for documents with a news_site__name present in a list of comma-separated values. Case insensitive. (optional)
     - parameter newsSiteExclude: (query) Search for documents with a news_site__name not present in a list of comma-separated values. Case insensitive. (optional)
     - parameter offset: (query) The initial index from which to return the results. (optional)
     - parameter ordering: (query) Which field to use when ordering the results. (optional)
     - parameter publishedAtGt: (query) Get all documents published after a given ISO8601 timestamp (excluded). (optional)
     - parameter publishedAtGte: (query) Get all documents published after a given ISO8601 timestamp (included). (optional)
     - parameter publishedAtLt: (query) Get all documents published before a given ISO8601 timestamp (excluded). (optional)
     - parameter publishedAtLte: (query) Get all documents published before a given ISO8601 timestamp (included). (optional)
     - parameter search: (query) Search for documents with a specific phrase in the title or summary. (optional)
     - parameter summaryContains: (query) Search for all documents with a specific phrase in the summary. (optional)
     - parameter summaryContainsAll: (query) Search for documents with a summary containing all keywords from comma-separated values. (optional)
     - parameter summaryContainsOne: (query) Search for documents with a summary containing at least one keyword from comma-separated values. (optional)
     - parameter titleContains: (query) Search for all documents with a specific phrase in the title. (optional)
     - parameter titleContainsAll: (query) Search for documents with a title containing all keywords from comma-separated values. (optional)
     - parameter titleContainsOne: (query) Search for documents with a title containing at least one keyword from comma-separated values. (optional)
     - parameter updatedAtGt: (query) Get all documents updated after a given ISO8601 timestamp (excluded). (optional)
     - parameter updatedAtGte: (query) Get all documents updated after a given ISO8601 timestamp (included). (optional)
     - parameter updatedAtLt: (query) Get all documents updated before a given ISO8601 timestamp (excluded). (optional)
     - parameter updatedAtLte: (query) Get all documents updated before a given ISO8601 timestamp (included). (optional)
     - returns: PaginatedArticleList
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func articlesList(event: [Int]? = nil, hasEvent: Bool? = nil, hasLaunch: Bool? = nil, isFeatured: Bool? = nil, launch: [UUID]? = nil, limit: Int? = nil, newsSite: String? = nil, newsSiteExclude: String? = nil, offset: Int? = nil, ordering: String? = nil, publishedAtGt: Date? = nil, publishedAtGte: Date? = nil, publishedAtLt: Date? = nil, publishedAtLte: Date? = nil, search: String? = nil, summaryContains: String? = nil, summaryContainsAll: String? = nil, summaryContainsOne: String? = nil, titleContains: String? = nil, titleContainsAll: String? = nil, titleContainsOne: String? = nil, updatedAtGt: Date? = nil, updatedAtGte: Date? = nil, updatedAtLt: Date? = nil, updatedAtLte: Date? = nil) async throws -> PaginatedArticleList {
        return try await articlesListWithRequestBuilder(event: event, hasEvent: hasEvent, hasLaunch: hasLaunch, isFeatured: isFeatured, launch: launch, limit: limit, newsSite: newsSite, newsSiteExclude: newsSiteExclude, offset: offset, ordering: ordering, publishedAtGt: publishedAtGt, publishedAtGte: publishedAtGte, publishedAtLt: publishedAtLt, publishedAtLte: publishedAtLte, search: search, summaryContains: summaryContains, summaryContainsAll: summaryContainsAll, summaryContainsOne: summaryContainsOne, titleContains: titleContains, titleContainsAll: titleContainsAll, titleContainsOne: titleContainsOne, updatedAtGt: updatedAtGt, updatedAtGte: updatedAtGte, updatedAtLt: updatedAtLt, updatedAtLte: updatedAtLte).execute().body
    }

    /**
     - GET /v4/articles/
     - parameter event: (query) Search for all documents related to a specific event using its Launch Library 2 ID. (optional)
     - parameter hasEvent: (query) Get all documents that have a related event. (optional)
     - parameter hasLaunch: (query) Get all documents that have a related launch. (optional)
     - parameter isFeatured: (query) Get all documents that are featured. (optional)
     - parameter launch: (query) Search for all documents related to a specific launch using its Launch Library 2 ID. (optional)
     - parameter limit: (query) Number of results to return per page. (optional)
     - parameter newsSite: (query) Search for documents with a news_site__name present in a list of comma-separated values. Case insensitive. (optional)
     - parameter newsSiteExclude: (query) Search for documents with a news_site__name not present in a list of comma-separated values. Case insensitive. (optional)
     - parameter offset: (query) The initial index from which to return the results. (optional)
     - parameter ordering: (query) Which field to use when ordering the results. (optional)
     - parameter publishedAtGt: (query) Get all documents published after a given ISO8601 timestamp (excluded). (optional)
     - parameter publishedAtGte: (query) Get all documents published after a given ISO8601 timestamp (included). (optional)
     - parameter publishedAtLt: (query) Get all documents published before a given ISO8601 timestamp (excluded). (optional)
     - parameter publishedAtLte: (query) Get all documents published before a given ISO8601 timestamp (included). (optional)
     - parameter search: (query) Search for documents with a specific phrase in the title or summary. (optional)
     - parameter summaryContains: (query) Search for all documents with a specific phrase in the summary. (optional)
     - parameter summaryContainsAll: (query) Search for documents with a summary containing all keywords from comma-separated values. (optional)
     - parameter summaryContainsOne: (query) Search for documents with a summary containing at least one keyword from comma-separated values. (optional)
     - parameter titleContains: (query) Search for all documents with a specific phrase in the title. (optional)
     - parameter titleContainsAll: (query) Search for documents with a title containing all keywords from comma-separated values. (optional)
     - parameter titleContainsOne: (query) Search for documents with a title containing at least one keyword from comma-separated values. (optional)
     - parameter updatedAtGt: (query) Get all documents updated after a given ISO8601 timestamp (excluded). (optional)
     - parameter updatedAtGte: (query) Get all documents updated after a given ISO8601 timestamp (included). (optional)
     - parameter updatedAtLt: (query) Get all documents updated before a given ISO8601 timestamp (excluded). (optional)
     - parameter updatedAtLte: (query) Get all documents updated before a given ISO8601 timestamp (included). (optional)
     - returns: RequestBuilder<PaginatedArticleList> 
     */
    open class func articlesListWithRequestBuilder(event: [Int]? = nil, hasEvent: Bool? = nil, hasLaunch: Bool? = nil, isFeatured: Bool? = nil, launch: [UUID]? = nil, limit: Int? = nil, newsSite: String? = nil, newsSiteExclude: String? = nil, offset: Int? = nil, ordering: String? = nil, publishedAtGt: Date? = nil, publishedAtGte: Date? = nil, publishedAtLt: Date? = nil, publishedAtLte: Date? = nil, search: String? = nil, summaryContains: String? = nil, summaryContainsAll: String? = nil, summaryContainsOne: String? = nil, titleContains: String? = nil, titleContainsAll: String? = nil, titleContainsOne: String? = nil, updatedAtGt: Date? = nil, updatedAtGte: Date? = nil, updatedAtLt: Date? = nil, updatedAtLte: Date? = nil) -> RequestBuilder<PaginatedArticleList> {
        let localVariablePath = "/v4/articles/"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "event": (wrappedValue: event?.encodeToJSON(), isExplode: false),
            "has_event": (wrappedValue: hasEvent?.encodeToJSON(), isExplode: true),
            "has_launch": (wrappedValue: hasLaunch?.encodeToJSON(), isExplode: true),
            "is_featured": (wrappedValue: isFeatured?.encodeToJSON(), isExplode: true),
            "launch": (wrappedValue: launch?.encodeToJSON(), isExplode: false),
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
            "news_site": (wrappedValue: newsSite?.encodeToJSON(), isExplode: true),
            "news_site_exclude": (wrappedValue: newsSiteExclude?.encodeToJSON(), isExplode: true),
            "offset": (wrappedValue: offset?.encodeToJSON(), isExplode: true),
            "ordering": (wrappedValue: ordering?.encodeToJSON(), isExplode: true),
            "published_at_gt": (wrappedValue: publishedAtGt?.encodeToJSON(), isExplode: true),
            "published_at_gte": (wrappedValue: publishedAtGte?.encodeToJSON(), isExplode: true),
            "published_at_lt": (wrappedValue: publishedAtLt?.encodeToJSON(), isExplode: true),
            "published_at_lte": (wrappedValue: publishedAtLte?.encodeToJSON(), isExplode: true),
            "search": (wrappedValue: search?.encodeToJSON(), isExplode: true),
            "summary_contains": (wrappedValue: summaryContains?.encodeToJSON(), isExplode: true),
            "summary_contains_all": (wrappedValue: summaryContainsAll?.encodeToJSON(), isExplode: true),
            "summary_contains_one": (wrappedValue: summaryContainsOne?.encodeToJSON(), isExplode: true),
            "title_contains": (wrappedValue: titleContains?.encodeToJSON(), isExplode: true),
            "title_contains_all": (wrappedValue: titleContainsAll?.encodeToJSON(), isExplode: true),
            "title_contains_one": (wrappedValue: titleContainsOne?.encodeToJSON(), isExplode: true),
            "updated_at_gt": (wrappedValue: updatedAtGt?.encodeToJSON(), isExplode: true),
            "updated_at_gte": (wrappedValue: updatedAtGte?.encodeToJSON(), isExplode: true),
            "updated_at_lt": (wrappedValue: updatedAtLt?.encodeToJSON(), isExplode: true),
            "updated_at_lte": (wrappedValue: updatedAtLte?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<PaginatedArticleList>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**

     - parameter id: (path) A unique integer value identifying this article. 
     - returns: Article
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func articlesRetrieve(id: Int) async throws -> Article {
        return try await articlesRetrieveWithRequestBuilder(id: id).execute().body
    }

    /**
     - GET /v4/articles/{id}/
     - parameter id: (path) A unique integer value identifying this article. 
     - returns: RequestBuilder<Article> 
     */
    open class func articlesRetrieveWithRequestBuilder(id: Int) -> RequestBuilder<Article> {
        var localVariablePath = "/v4/articles/{id}/"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Article>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }
}