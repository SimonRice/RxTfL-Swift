//
// PredictionTiming.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class PredictionTiming: JSONEncodable {

    public var countdownServerAdjustment: String?
    public var source: Date?
    public var insert: Date?
    public var read: Date?
    public var sent: Date?
    public var received: Date?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["countdownServerAdjustment"] = self.countdownServerAdjustment
        nillableDictionary["source"] = self.source?.encodeToJSON()
        nillableDictionary["insert"] = self.insert?.encodeToJSON()
        nillableDictionary["read"] = self.read?.encodeToJSON()
        nillableDictionary["sent"] = self.sent?.encodeToJSON()
        nillableDictionary["received"] = self.received?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
