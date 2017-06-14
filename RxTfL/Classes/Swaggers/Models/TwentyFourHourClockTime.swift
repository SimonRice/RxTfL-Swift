//
// TwentyFourHourClockTime.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class TwentyFourHourClockTime: JSONEncodable {

    public var hour: String?
    public var minute: String?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["hour"] = self.hour
        nillableDictionary["minute"] = self.minute

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
