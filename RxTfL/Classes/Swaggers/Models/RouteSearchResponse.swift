//
// RouteSearchResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class RouteSearchResponse: JSONEncodable {

    public var input: String?
    public var searchMatches: [RouteSearchMatch]?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["input"] = self.input
        nillableDictionary["searchMatches"] = self.searchMatches?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
