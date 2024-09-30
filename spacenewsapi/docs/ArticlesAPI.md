# ArticlesAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**articlesList**](ArticlesAPI.md#articleslist) | **GET** /v4/articles/ | 
[**articlesRetrieve**](ArticlesAPI.md#articlesretrieve) | **GET** /v4/articles/{id}/ | 


# **articlesList**
```swift
    open class func articlesList(event: [Int]? = nil, hasEvent: Bool? = nil, hasLaunch: Bool? = nil, isFeatured: Bool? = nil, launch: [UUID]? = nil, limit: Int? = nil, newsSite: String? = nil, newsSiteExclude: String? = nil, offset: Int? = nil, ordering: String? = nil, publishedAtGt: Date? = nil, publishedAtGte: Date? = nil, publishedAtLt: Date? = nil, publishedAtLte: Date? = nil, search: String? = nil, summaryContains: String? = nil, summaryContainsAll: String? = nil, summaryContainsOne: String? = nil, titleContains: String? = nil, titleContainsAll: String? = nil, titleContainsOne: String? = nil, updatedAtGt: Date? = nil, updatedAtGte: Date? = nil, updatedAtLt: Date? = nil, updatedAtLte: Date? = nil, completion: @escaping (_ data: PaginatedArticleList?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let event = [123] // [Int] | Search for all documents related to a specific event using its Launch Library 2 ID. (optional)
let hasEvent = true // Bool | Get all documents that have a related event. (optional)
let hasLaunch = true // Bool | Get all documents that have a related launch. (optional)
let isFeatured = true // Bool | Get all documents that are featured. (optional)
let launch = [123] // [UUID] | Search for all documents related to a specific launch using its Launch Library 2 ID. (optional)
let limit = 987 // Int | Number of results to return per page. (optional)
let newsSite = "newsSite_example" // String | Search for documents with a news_site__name present in a list of comma-separated values. Case insensitive. (optional)
let newsSiteExclude = "newsSiteExclude_example" // String | Search for documents with a news_site__name not present in a list of comma-separated values. Case insensitive. (optional)
let offset = 987 // Int | The initial index from which to return the results. (optional)
let ordering = "ordering_example" // String | Which field to use when ordering the results. (optional)
let publishedAtGt = Date() // Date | Get all documents published after a given ISO8601 timestamp (excluded). (optional)
let publishedAtGte = Date() // Date | Get all documents published after a given ISO8601 timestamp (included). (optional)
let publishedAtLt = Date() // Date | Get all documents published before a given ISO8601 timestamp (excluded). (optional)
let publishedAtLte = Date() // Date | Get all documents published before a given ISO8601 timestamp (included). (optional)
let search = "search_example" // String | Search for documents with a specific phrase in the title or summary. (optional)
let summaryContains = "summaryContains_example" // String | Search for all documents with a specific phrase in the summary. (optional)
let summaryContainsAll = "summaryContainsAll_example" // String | Search for documents with a summary containing all keywords from comma-separated values. (optional)
let summaryContainsOne = "summaryContainsOne_example" // String | Search for documents with a summary containing at least one keyword from comma-separated values. (optional)
let titleContains = "titleContains_example" // String | Search for all documents with a specific phrase in the title. (optional)
let titleContainsAll = "titleContainsAll_example" // String | Search for documents with a title containing all keywords from comma-separated values. (optional)
let titleContainsOne = "titleContainsOne_example" // String | Search for documents with a title containing at least one keyword from comma-separated values. (optional)
let updatedAtGt = Date() // Date | Get all documents updated after a given ISO8601 timestamp (excluded). (optional)
let updatedAtGte = Date() // Date | Get all documents updated after a given ISO8601 timestamp (included). (optional)
let updatedAtLt = Date() // Date | Get all documents updated before a given ISO8601 timestamp (excluded). (optional)
let updatedAtLte = Date() // Date | Get all documents updated before a given ISO8601 timestamp (included). (optional)

ArticlesAPI.articlesList(event: event, hasEvent: hasEvent, hasLaunch: hasLaunch, isFeatured: isFeatured, launch: launch, limit: limit, newsSite: newsSite, newsSiteExclude: newsSiteExclude, offset: offset, ordering: ordering, publishedAtGt: publishedAtGt, publishedAtGte: publishedAtGte, publishedAtLt: publishedAtLt, publishedAtLte: publishedAtLte, search: search, summaryContains: summaryContains, summaryContainsAll: summaryContainsAll, summaryContainsOne: summaryContainsOne, titleContains: titleContains, titleContainsAll: titleContainsAll, titleContainsOne: titleContainsOne, updatedAtGt: updatedAtGt, updatedAtGte: updatedAtGte, updatedAtLt: updatedAtLt, updatedAtLte: updatedAtLte) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **event** | [**[Int]**](Int.md) | Search for all documents related to a specific event using its Launch Library 2 ID. | [optional] 
 **hasEvent** | **Bool** | Get all documents that have a related event. | [optional] 
 **hasLaunch** | **Bool** | Get all documents that have a related launch. | [optional] 
 **isFeatured** | **Bool** | Get all documents that are featured. | [optional] 
 **launch** | [**[UUID]**](UUID.md) | Search for all documents related to a specific launch using its Launch Library 2 ID. | [optional] 
 **limit** | **Int** | Number of results to return per page. | [optional] 
 **newsSite** | **String** | Search for documents with a news_site__name present in a list of comma-separated values. Case insensitive. | [optional] 
 **newsSiteExclude** | **String** | Search for documents with a news_site__name not present in a list of comma-separated values. Case insensitive. | [optional] 
 **offset** | **Int** | The initial index from which to return the results. | [optional] 
 **ordering** | **String** | Which field to use when ordering the results. | [optional] 
 **publishedAtGt** | **Date** | Get all documents published after a given ISO8601 timestamp (excluded). | [optional] 
 **publishedAtGte** | **Date** | Get all documents published after a given ISO8601 timestamp (included). | [optional] 
 **publishedAtLt** | **Date** | Get all documents published before a given ISO8601 timestamp (excluded). | [optional] 
 **publishedAtLte** | **Date** | Get all documents published before a given ISO8601 timestamp (included). | [optional] 
 **search** | **String** | Search for documents with a specific phrase in the title or summary. | [optional] 
 **summaryContains** | **String** | Search for all documents with a specific phrase in the summary. | [optional] 
 **summaryContainsAll** | **String** | Search for documents with a summary containing all keywords from comma-separated values. | [optional] 
 **summaryContainsOne** | **String** | Search for documents with a summary containing at least one keyword from comma-separated values. | [optional] 
 **titleContains** | **String** | Search for all documents with a specific phrase in the title. | [optional] 
 **titleContainsAll** | **String** | Search for documents with a title containing all keywords from comma-separated values. | [optional] 
 **titleContainsOne** | **String** | Search for documents with a title containing at least one keyword from comma-separated values. | [optional] 
 **updatedAtGt** | **Date** | Get all documents updated after a given ISO8601 timestamp (excluded). | [optional] 
 **updatedAtGte** | **Date** | Get all documents updated after a given ISO8601 timestamp (included). | [optional] 
 **updatedAtLt** | **Date** | Get all documents updated before a given ISO8601 timestamp (excluded). | [optional] 
 **updatedAtLte** | **Date** | Get all documents updated before a given ISO8601 timestamp (included). | [optional] 

### Return type

[**PaginatedArticleList**](PaginatedArticleList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **articlesRetrieve**
```swift
    open class func articlesRetrieve(id: Int, completion: @escaping (_ data: Article?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | A unique integer value identifying this article.

ArticlesAPI.articlesRetrieve(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | A unique integer value identifying this article. | 

### Return type

[**Article**](Article.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

