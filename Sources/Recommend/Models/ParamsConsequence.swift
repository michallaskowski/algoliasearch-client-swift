// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(Core)
    import Core
#endif

/// Filter or boost recommendations matching a facet filter.
public struct ParamsConsequence: Codable, JSONEncodable {
    /// Filter recommendations that match or don't match the same `facet:facet_value` combination as the viewed item.
    public var automaticFacetFilters: [AutoFacetFilter]?
    /// Filter expression to only include items that match the filter criteria in the response.  You can use these
    /// filter expressions:  - **Numeric filters.** `<facet> <op> <number>`, where `<op>` is one of `<`, `<=`, `=`,
    /// `!=`, `>`, `>=`. - **Ranges.** `<facet>:<lower> TO <upper>` where `<lower>` and `<upper>` are the lower and
    /// upper limits of the range (inclusive). - **Facet filters.** `<facet>:<value>` where `<facet>` is a facet
    /// attribute (case-sensitive) and `<value>` a facet value. - **Tag filters.** `_tags:<value>` or just `<value>`
    /// (case-sensitive). - **Boolean filters.** `<facet>: true | false`.  You can combine filters with `AND`, `OR`, and
    /// `NOT` operators with the following restrictions:  - You can only combine filters of the same type with `OR`.  
    /// **Not supported:** `facet:value OR num > 3`. - You can't use `NOT` with combinations of filters.   **Not
    /// supported:** `NOT(facet:value OR facet:value)` - You can't combine conjunctions (`AND`) with `OR`.   **Not
    /// supported:** `facet:value OR (facet:value AND facet:value)`  Use quotes around your filters, if the facet
    /// attribute name or facet value has spaces, keywords (`OR`, `AND`, `NOT`), or quotes. If a facet attribute is an
    /// array, the filter matches if it matches at least one element of the array.  For more information, see
    /// [Filters](https://www.algolia.com/doc/guides/managing-results/refine-results/filtering/).
    public var filters: String?
    /// Filters to promote or demote records in the search results.  Optional filters work like facet filters, but they
    /// don't exclude records from the search results. Records that match the optional filter rank before records that
    /// don't match. Matches with higher weights (`<score=N>`) rank before matches with lower weights. If you're using a
    /// negative filter `facet:-value`, matching records rank after records that don't match.
    public var optionalFilters: [String]?

    public init(
        automaticFacetFilters: [AutoFacetFilter]? = nil,
        filters: String? = nil,
        optionalFilters: [String]? = nil
    ) {
        self.automaticFacetFilters = automaticFacetFilters
        self.filters = filters
        self.optionalFilters = optionalFilters
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case automaticFacetFilters
        case filters
        case optionalFilters
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.automaticFacetFilters, forKey: .automaticFacetFilters)
        try container.encodeIfPresent(self.filters, forKey: .filters)
        try container.encodeIfPresent(self.optionalFilters, forKey: .optionalFilters)
    }
}

extension ParamsConsequence: Equatable {
    public static func ==(lhs: ParamsConsequence, rhs: ParamsConsequence) -> Bool {
        lhs.automaticFacetFilters == rhs.automaticFacetFilters &&
            lhs.filters == rhs.filters &&
            lhs.optionalFilters == rhs.optionalFilters
    }
}

extension ParamsConsequence: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.automaticFacetFilters?.hashValue)
        hasher.combine(self.filters?.hashValue)
        hasher.combine(self.optionalFilters?.hashValue)
    }
}
