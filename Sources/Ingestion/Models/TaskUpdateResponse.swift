// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(Core)
    import Core
#endif

/// API response for updating a task.
public struct TaskUpdateResponse: Codable, JSONEncodable {
    /// Universally unique identifier (UUID) of a task.
    public var taskID: String
    /// Date of last update in RFC3339 format.
    public var updatedAt: String

    public init(taskID: String, updatedAt: String) {
        self.taskID = taskID
        self.updatedAt = updatedAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case taskID
        case updatedAt
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.taskID, forKey: .taskID)
        try container.encode(self.updatedAt, forKey: .updatedAt)
    }
}

extension TaskUpdateResponse: Equatable {
    public static func ==(lhs: TaskUpdateResponse, rhs: TaskUpdateResponse) -> Bool {
        lhs.taskID == rhs.taskID &&
            lhs.updatedAt == rhs.updatedAt
    }
}

extension TaskUpdateResponse: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.taskID.hashValue)
        hasher.combine(self.updatedAt.hashValue)
    }
}
