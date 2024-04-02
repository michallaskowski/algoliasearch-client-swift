// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(Core)
    import Core
#endif

/// Type of authentication. This determines the type of credentials required in the &#x60;input&#x60; object.
public enum AuthenticationType: String, Codable, CaseIterable {
    case googleServiceAccount
    case basic
    case apiKey
    case oauth
    case algolia
}

extension AuthenticationType: Hashable {}
