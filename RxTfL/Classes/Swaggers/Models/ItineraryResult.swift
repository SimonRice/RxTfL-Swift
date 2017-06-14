//
// ItineraryResult.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** A DTO representing a list of possible journeys. */
open class ItineraryResult: JSONEncodable {

    public var journeys: [Journey]?
    public var lines: [Line]?
    public var cycleHireDockingStationData: JourneyPlannerCycleHireDockingStationData?
    public var stopMessages: [String]?
    public var recommendedMaxAgeMinutes: Int32?
    public var searchCriteria: SearchCriteria?
    public var journeyVector: JourneyVector?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["journeys"] = self.journeys?.encodeToJSON()
        nillableDictionary["lines"] = self.lines?.encodeToJSON()
        nillableDictionary["cycleHireDockingStationData"] = self.cycleHireDockingStationData?.encodeToJSON()
        nillableDictionary["stopMessages"] = self.stopMessages?.encodeToJSON()
        nillableDictionary["recommendedMaxAgeMinutes"] = self.recommendedMaxAgeMinutes?.encodeToJSON()
        nillableDictionary["searchCriteria"] = self.searchCriteria?.encodeToJSON()
        nillableDictionary["journeyVector"] = self.journeyVector?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
