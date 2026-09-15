// Typed Inttegro API resource operations.
import Foundation

/// Operations for Inttegro otp.
public struct Otp: Sendable {
    private let client: Client
    init(client: Client) { self.client = client }

    /// Initiate OTP transaction
    public func initiate(_ request: InitiateOTPRequest, options: RequestOptions = .init()) async throws -> OTPTransaction {
        try await client.request(method: "POST", path: "/otp/initiate", body: request, options: options, operation: "otp.initiate", field: "transaction", authenticated: true)
    }

    /// Verify OTP token
    public func verify(_ request: VerifyOTPRequest, options: RequestOptions = .init()) async throws -> OTPVerification {
        try await client.request(method: "POST", path: "/otp/verify", body: request, options: options, operation: "otp.verify", field: nil, authenticated: true)
    }

    /// Lookup OTP transaction
    public func lookup(_ request: LookupOTPRequest, options: RequestOptions = .init()) async throws -> OTPTransaction {
        try await client.request(method: "POST", path: "/otp/lookup", body: request, options: options, operation: "otp.lookup", field: "transaction", authenticated: true)
    }

}
