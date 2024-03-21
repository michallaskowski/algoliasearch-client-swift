// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(Core)
    import Core
#endif

/// Attribute by which to order the response items.  If the &#x60;clickAnalytics&#x60; parameter is false, only
/// &#x60;searchCount&#x60; is available.
public enum OrderBy: String, Codable, CaseIterable {
    case searchCount
    case clickThroughRate
    case conversionRate
    case averageClickPosition
}
