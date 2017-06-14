//
// PlacePolygon.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class PlacePolygon: JSONEncodable {

    public var geoPoints: [GeoPoint]?
    public var commonName: String?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["geoPoints"] = self.geoPoints?.encodeToJSON()
        nillableDictionary["commonName"] = self.commonName

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
