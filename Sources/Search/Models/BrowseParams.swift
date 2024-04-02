// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(Core)
    import Core
#endif

public enum BrowseParams: Codable, JSONEncodable, AbstractEncodable {
    case searchParamsString(SearchParamsString)
    case browseParamsObject(BrowseParamsObject)

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case let .searchParamsString(value):
            try container.encode(value)
        case let .browseParamsObject(value):
            try container.encode(value)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(SearchParamsString.self) {
            self = .searchParamsString(value)
        } else if let value = try? container.decode(BrowseParamsObject.self) {
            self = .browseParamsObject(value)
        } else {
            throw DecodingError.typeMismatch(
                Self.Type.self,
                .init(codingPath: decoder.codingPath, debugDescription: "Unable to decode instance of BrowseParams")
            )
        }
    }

    public func GetActualInstance() -> Encodable {
        switch self {
        case let .searchParamsString(value):
            value as SearchParamsString
        case let .browseParamsObject(value):
            value as BrowseParamsObject
        }
    }
}

extension BrowseParams: Equatable {}
extension BrowseParams: Hashable {}
