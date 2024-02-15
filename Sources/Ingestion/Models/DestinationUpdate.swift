// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Core
import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

/// Payload to partially update a Destination.
public struct DestinationUpdate: Codable, JSONEncodable, Hashable {
    public var type: DestinationType?
    /// An human readable name describing the object.
    public var name: String?
    public var input: DestinationInput?
    public var authenticationID: String?

    public init(
        type: DestinationType? = nil,
        name: String? = nil,
        input: DestinationInput? = nil,
        authenticationID: String? = nil
    ) {
        self.type = type
        self.name = name
        self.input = input
        self.authenticationID = authenticationID
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case name
        case input
        case authenticationID
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.type, forKey: .type)
        try container.encodeIfPresent(self.name, forKey: .name)
        try container.encodeIfPresent(self.input, forKey: .input)
        try container.encodeIfPresent(self.authenticationID, forKey: .authenticationID)
    }
}
