// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(Core)
    import Core
#endif

public struct TopHitsResponseWithRevenueAnalytics: Codable, JSONEncodable, Hashable {
    /// Most frequent search results with click, conversion, and revenue metrics.
    public var hits: [TopHitWithRevenueAnalytics]

    public init(hits: [TopHitWithRevenueAnalytics]) {
        self.hits = hits
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case hits
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.hits, forKey: .hits)
    }
}
