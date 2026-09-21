import Foundation

public struct ResourceSearchOperator: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let equal = Self(rawValue: "eq")
    public static let anyOf = Self(rawValue: "in")
}

public struct ResourceSearchSortField: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let relevance = Self(rawValue: "relevance")
    public static let updatedAt = Self(rawValue: "updated_at")
    public static let publishedAt = Self(rawValue: "published_at")
}

public struct ResourceSearchSortDirection: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let ascending = Self(rawValue: "asc")
    public static let descending = Self(rawValue: "desc")
}

public struct SearchResourceType: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let customer = Self(rawValue: "customer")
    public static let financialAccount = Self(rawValue: "financial_account")
    public static let order = Self(rawValue: "order")
    public static let payout = Self(rawValue: "payout")
    public static let product = Self(rawValue: "product")
}

public struct ResourceSearchTotalRelation: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let exact = Self(rawValue: "exact")
    public static let lowerBound = Self(rawValue: "lower_bound")
}

public struct ResourceSearchFreshnessState: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let current = Self(rawValue: "current")
    public static let delayed = Self(rawValue: "delayed")
    public static let partial = Self(rawValue: "partial")
    public static let unknown = Self(rawValue: "unknown")
    public static let unavailable = Self(rawValue: "unavailable")
}

public struct ResourceSearchFilter: Codable, Sendable, Equatable {
    public var field: String
    public var `operator`: ResourceSearchOperator
    public var values: [String]
    public init(field: String, operator: ResourceSearchOperator, values: [String]) {
        self.field = field
        self.operator = `operator`
        self.values = values
    }
}

public struct ResourceSearchFacet: Codable, Sendable, Equatable {
    public var field: String
    public var limit: Int?
    public init(field: String, limit: Int? = nil) { self.field = field; self.limit = limit }
}

public struct ResourceSearchSort: Codable, Sendable, Equatable {
    public var field: ResourceSearchSortField
    public var direction: ResourceSearchSortDirection
    public init(field: ResourceSearchSortField, direction: ResourceSearchSortDirection) {
        self.field = field
        self.direction = direction
    }
}

public struct ResourceSearchRequest: Codable, Sendable, Equatable {
    public var text: String?
    public var filters: [ResourceSearchFilter]?
    public var facets: [ResourceSearchFacet]?
    public var sort: ResourceSearchSort?
    public var pageSize: Int?
    public var cursor: String?
    public init(text: String? = nil, filters: [ResourceSearchFilter]? = nil, facets: [ResourceSearchFacet]? = nil, sort: ResourceSearchSort? = nil, pageSize: Int? = nil, cursor: String? = nil) {
        self.text = text; self.filters = filters; self.facets = facets; self.sort = sort; self.pageSize = pageSize; self.cursor = cursor
    }
    private enum CodingKeys: String, CodingKey {
        case text, filters, facets, sort, cursor
        case pageSize = "page_size"
    }
}

public struct ResourceSearchTotal: Codable, Sendable, Equatable {
    public var value: Int
    public var relation: ResourceSearchTotalRelation
}

public struct ResourceSearchResourceTotal: Codable, Sendable, Equatable {
    public var resourceType: SearchResourceType
    public var value: Int
    public var relation: ResourceSearchTotalRelation
    private enum CodingKeys: String, CodingKey { case resourceType = "resource_type", value, relation }
}

public struct ResourceSearchResourceReference: Codable, Sendable, Equatable {
    public var type: SearchResourceType
    public var id: String
}

public struct ResourceSearchResult: Codable, Sendable, Equatable {
    public var resource: ResourceSearchResourceReference
    public var title: String
    public var summary: String?
    public var status: String?
    public var customerName: String?
    public var amount: Amount?
    public var url: URL?
    public var updatedAt: Date
    private enum CodingKeys: String, CodingKey {
        case resource, title, summary, status, amount, url
        case customerName = "customer_name"
        case updatedAt = "updated_at"
    }
}

public struct ResourceSearchFacetBucket: Codable, Sendable, Equatable {
    public var value: String
    public var count: Int
}

public struct ResourceSearchFacetResult: Codable, Sendable, Equatable {
    public var field: String
    public var buckets: [ResourceSearchFacetBucket]
}

public struct ResourceSearchResourceFreshness: Codable, Sendable, Equatable {
    public var resourceType: SearchResourceType
    public var state: ResourceSearchFreshnessState
    public var observedAt: Date?
    public var lastIndexedAt: Date?
    private enum CodingKeys: String, CodingKey {
        case resourceType = "resource_type"
        case state
        case observedAt = "observed_at"
        case lastIndexedAt = "last_indexed_at"
    }
}

public struct ResourceSearchFreshness: Codable, Sendable, Equatable {
    public var state: ResourceSearchFreshnessState
    public var observedAt: Date?
    public var resources: [ResourceSearchResourceFreshness]?
    private enum CodingKeys: String, CodingKey { case state, observedAt = "observed_at", resources }
}

public struct ResourceSearchPage: Codable, Sendable, Equatable {
    public var resourceTypes: [SearchResourceType]
    public var sort: ResourceSearchSort
    public var pageSize: Int
    public var resultCount: Int
    public var hasMore: Bool
    public var total: ResourceSearchTotal
    public var resourceTotals: [ResourceSearchResourceTotal]
    public var results: [ResourceSearchResult]
    public var facets: [ResourceSearchFacetResult]
    public var nextCursor: String?
    public var freshness: ResourceSearchFreshness
    private enum CodingKeys: String, CodingKey {
        case resourceTypes = "resource_types"
        case sort
        case pageSize = "page_size"
        case resultCount = "result_count"
        case hasMore = "has_more"
        case total
        case resourceTotals = "resource_totals"
        case results, facets
        case nextCursor = "next_cursor"
        case freshness
    }
}
