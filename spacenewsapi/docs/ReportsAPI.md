# ReportsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**reportsList**](ReportsAPI.md#reportslist) | **GET** /v4/reports/ | 
[**reportsRetrieve**](ReportsAPI.md#reportsretrieve) | **GET** /v4/reports/{id}/ | 


# **reportsList**
```swift
    open class func reportsList(limit: Int? = nil, newsSite: String? = nil, newsSiteExclude: String? = nil, offset: Int? = nil, ordering: String? = nil, publishedAtGt: Date? = nil, publishedAtGte: Date? = nil, publishedAtLt: Date? = nil, publishedAtLte: Date? = nil, search: String? = nil, summaryContains: String? = nil, summaryContainsAll: String? = nil, summaryContainsOne: String? = nil, titleContains: String? = nil, titleContainsAll: String? = nil, titleContainsOne: String? = nil, updatedAtGt: Date? = nil, updatedAtGte: Date? = nil, updatedAtLt: Date? = nil, updatedAtLte: Date? = nil, completion: @escaping (_ data: PaginatedReportList?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

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

ReportsAPI.reportsList(limit: limit, newsSite: newsSite, newsSiteExclude: newsSiteExclude, offset: offset, ordering: ordering, publishedAtGt: publishedAtGt, publishedAtGte: publishedAtGte, publishedAtLt: publishedAtLt, publishedAtLte: publishedAtLte, search: search, summaryContains: summaryContains, summaryContainsAll: summaryContainsAll, summaryContainsOne: summaryContainsOne, titleContains: titleContains, titleContainsAll: titleContainsAll, titleContainsOne: titleContainsOne, updatedAtGt: updatedAtGt, updatedAtGte: updatedAtGte, updatedAtLt: updatedAtLt, updatedAtLte: updatedAtLte) { (response, error) in
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

[**PaginatedReportList**](PaginatedReportList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reportsRetrieve**
```swift
    open class func reportsRetrieve(id: Int, completion: @escaping (_ data: Report?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | A unique integer value identifying this report.

ReportsAPI.reportsRetrieve(id: id) { (response, error) in
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
 **id** | **Int** | A unique integer value identifying this report. | 

### Return type

[**Report**](Report.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

