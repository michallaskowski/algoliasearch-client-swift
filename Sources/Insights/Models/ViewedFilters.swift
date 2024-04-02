// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(Core)
    import Core
#endif

/// Use this method to capture active filters. For example, when browsing a category page, users see content filtered on
/// that specific category.
public struct ViewedFilters: Codable, JSONEncodable {
    /// Event name, up to 64 ASCII characters.  Consider naming events consistently—for example, by adopting Segment's [object-action](https://segment.com/academy/collecting-data/naming-conventions-for-clean-data/#the-object-action-framework)
    /// framework.
    public var eventName: String
    public var eventType: ViewEvent
    /// Index name to which the event's items belong.
    public var index: String
    /// Applied facet filters.  Facet filters are `facet:value` pairs. Facet values must be URL-encoded, such as,
    /// `discount:10%25`.
    public var filters: [String]
    /// Anonymous or pseudonymous user identifier.  Don't use personally identifiable information in user tokens. For
    /// more information, see [User token](https://www.algolia.com/doc/guides/sending-events/concepts/usertoken/).
    public var userToken: String
    /// Identifier for authenticated users.  When the user signs in, you can get an identifier from your system and send
    /// it as `authenticatedUserToken`. This lets you keep using the `userToken` from before the user signed in, while
    /// providing a reliable way to identify users across sessions. Don't use personally identifiable information in
    /// user tokens. For more information, see [User
    /// token](https://www.algolia.com/doc/guides/sending-events/concepts/usertoken/).
    public var authenticatedUserToken: String?
    /// Timestamp of the event in milliseconds in [Unix epoch time](https://wikipedia.org/wiki/Unix_time). By default,
    /// the Insights API uses the time it receives an event as its timestamp.
    public var timestamp: Int64?

    public init(
        eventName: String,
        eventType: ViewEvent,
        index: String,
        filters: [String],
        userToken: String,
        authenticatedUserToken: String? = nil,
        timestamp: Int64? = nil
    ) {
        self.eventName = eventName
        self.eventType = eventType
        self.index = index
        self.filters = filters
        self.userToken = userToken
        self.authenticatedUserToken = authenticatedUserToken
        self.timestamp = timestamp
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case eventName
        case eventType
        case index
        case filters
        case userToken
        case authenticatedUserToken
        case timestamp
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.eventName, forKey: .eventName)
        try container.encode(self.eventType, forKey: .eventType)
        try container.encode(self.index, forKey: .index)
        try container.encode(self.filters, forKey: .filters)
        try container.encode(self.userToken, forKey: .userToken)
        try container.encodeIfPresent(self.authenticatedUserToken, forKey: .authenticatedUserToken)
        try container.encodeIfPresent(self.timestamp, forKey: .timestamp)
    }
}

extension ViewedFilters: Equatable {
    public static func ==(lhs: ViewedFilters, rhs: ViewedFilters) -> Bool {
        lhs.eventName == rhs.eventName &&
            lhs.eventType == rhs.eventType &&
            lhs.index == rhs.index &&
            lhs.filters == rhs.filters &&
            lhs.userToken == rhs.userToken &&
            lhs.authenticatedUserToken == rhs.authenticatedUserToken &&
            lhs.timestamp == rhs.timestamp
    }
}

extension ViewedFilters: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.eventName.hashValue)
        hasher.combine(self.eventType.hashValue)
        hasher.combine(self.index.hashValue)
        hasher.combine(self.filters.hashValue)
        hasher.combine(self.userToken.hashValue)
        hasher.combine(self.authenticatedUserToken?.hashValue)
        hasher.combine(self.timestamp?.hashValue)
    }
}
