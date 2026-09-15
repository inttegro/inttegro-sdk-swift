// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct ProductShipment: Codable, Sendable, Equatable {
    public var type: ProductShipmentType
    public var delivery: ProductDelivery?
    public var download: ProductDownload?
    public var render: ProductRender?
    public var service: ProductService?
    public var stream: ProductStream?

    public init(
        type: ProductShipmentType,
        delivery: ProductDelivery? = nil,
        download: ProductDownload? = nil,
        render: ProductRender? = nil,
        service: ProductService? = nil,
        stream: ProductStream? = nil
    ) {
        self.type = type
        self.delivery = delivery
        self.download = download
        self.render = render
        self.service = service
        self.stream = stream
    }
}
