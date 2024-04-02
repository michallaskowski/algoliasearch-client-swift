// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(Core)
    import Core
#endif

public struct InfrastructureResponseMetrics: Codable, JSONEncodable {
    /// CPU idleness in %.
    public var cpuUsage: [String: [ProbesMetric]]?
    /// RAM used for indexing in MB.
    public var ramIndexingUsage: [String: [ProbesMetric]]?
    /// RAM used for search in MB.
    public var ramSearchUsage: [String: [ProbesMetric]]?
    /// Solid-state disk (SSD) usage expressed as % of RAM.  0% means no SSD usage. A value of 50% indicates 32&nbsp;GB
    /// SSD usage for a machine with 64&nbsp;RAM.
    public var ssdUsage: [String: [ProbesMetric]]?
    /// Average build time of the indices in seconds.
    public var avgBuildTime: [String: [ProbesMetric]]?

    public init(
        cpuUsage: [String: [ProbesMetric]]? = nil,
        ramIndexingUsage: [String: [ProbesMetric]]? = nil,
        ramSearchUsage: [String: [ProbesMetric]]? = nil,
        ssdUsage: [String: [ProbesMetric]]? = nil,
        avgBuildTime: [String: [ProbesMetric]]? = nil
    ) {
        self.cpuUsage = cpuUsage
        self.ramIndexingUsage = ramIndexingUsage
        self.ramSearchUsage = ramSearchUsage
        self.ssdUsage = ssdUsage
        self.avgBuildTime = avgBuildTime
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case cpuUsage = "cpu_usage"
        case ramIndexingUsage = "ram_indexing_usage"
        case ramSearchUsage = "ram_search_usage"
        case ssdUsage = "ssd_usage"
        case avgBuildTime = "avg_build_time"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.cpuUsage, forKey: .cpuUsage)
        try container.encodeIfPresent(self.ramIndexingUsage, forKey: .ramIndexingUsage)
        try container.encodeIfPresent(self.ramSearchUsage, forKey: .ramSearchUsage)
        try container.encodeIfPresent(self.ssdUsage, forKey: .ssdUsage)
        try container.encodeIfPresent(self.avgBuildTime, forKey: .avgBuildTime)
    }
}

extension InfrastructureResponseMetrics: Equatable {
    public static func ==(lhs: InfrastructureResponseMetrics, rhs: InfrastructureResponseMetrics) -> Bool {
        lhs.cpuUsage == rhs.cpuUsage &&
            lhs.ramIndexingUsage == rhs.ramIndexingUsage &&
            lhs.ramSearchUsage == rhs.ramSearchUsage &&
            lhs.ssdUsage == rhs.ssdUsage &&
            lhs.avgBuildTime == rhs.avgBuildTime
    }
}

extension InfrastructureResponseMetrics: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.cpuUsage?.hashValue)
        hasher.combine(self.ramIndexingUsage?.hashValue)
        hasher.combine(self.ramSearchUsage?.hashValue)
        hasher.combine(self.ssdUsage?.hashValue)
        hasher.combine(self.avgBuildTime?.hashValue)
    }
}
