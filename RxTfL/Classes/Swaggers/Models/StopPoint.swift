//
// StopPoint.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class StopPoint: JSONEncodable {

    public var naptanId: String?
    public var platformName: String?
    /** The indicator of the stop point e.g. \&quot;Stop K\&quot; */
    public var indicator: String?
    /** The stop letter, if it could be cleansed from the Indicator e.g. \&quot;K\&quot; */
    public var stopLetter: String?
    public var modes: [String]?
    public var icsCode: String?
    public var smsCode: String?
    public var stopType: String?
    public var stationNaptan: String?
    public var accessibilitySummary: String?
    public var hubNaptanCode: String?
    public var lines: [Identifier]?
    public var lineGroup: [LineGroup]?
    public var lineModeGroups: [LineModeGroup]?
    public var fullName: String?
    public var naptanMode: String?
    public var status: Bool?
    /** A unique identifier. */
    public var id: String?
    /** The unique location of this resource. */
    public var url: String?
    /** A human readable name. */
    public var commonName: String?
    /** The distance of the place from its search point, if this is the result              of a geographical search, otherwise zero. */
    public var distance: Double?
    /** The type of Place. See /Place/Meta/placeTypes for possible values. */
    public var placeType: String?
    /** A bag of additional key/value pairs with extra information about this place. */
    public var additionalProperties: [AdditionalProperties]?
    public var children: [Place]?
    public var childrenUrls: [String]?
    /** WGS84 latitude of the location. */
    public var lat: Double?
    /** WGS84 longitude of the location. */
    public var lon: Double?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["naptanId"] = self.naptanId
        nillableDictionary["platformName"] = self.platformName
        nillableDictionary["indicator"] = self.indicator
        nillableDictionary["stopLetter"] = self.stopLetter
        nillableDictionary["modes"] = self.modes?.encodeToJSON()
        nillableDictionary["icsCode"] = self.icsCode
        nillableDictionary["smsCode"] = self.smsCode
        nillableDictionary["stopType"] = self.stopType
        nillableDictionary["stationNaptan"] = self.stationNaptan
        nillableDictionary["accessibilitySummary"] = self.accessibilitySummary
        nillableDictionary["hubNaptanCode"] = self.hubNaptanCode
        nillableDictionary["lines"] = self.lines?.encodeToJSON()
        nillableDictionary["lineGroup"] = self.lineGroup?.encodeToJSON()
        nillableDictionary["lineModeGroups"] = self.lineModeGroups?.encodeToJSON()
        nillableDictionary["fullName"] = self.fullName
        nillableDictionary["naptanMode"] = self.naptanMode
        nillableDictionary["status"] = self.status
        nillableDictionary["id"] = self.id
        nillableDictionary["url"] = self.url
        nillableDictionary["commonName"] = self.commonName
        nillableDictionary["distance"] = self.distance
        nillableDictionary["placeType"] = self.placeType
        nillableDictionary["additionalProperties"] = self.additionalProperties?.encodeToJSON()
        nillableDictionary["children"] = self.children?.encodeToJSON()
        nillableDictionary["childrenUrls"] = self.childrenUrls?.encodeToJSON()
        nillableDictionary["lat"] = self.lat
        nillableDictionary["lon"] = self.lon

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
