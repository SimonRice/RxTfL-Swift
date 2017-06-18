//
// TravelTimeAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire
import RxSwift



open class TravelTimeAPI: APIBase {
    /**
     * enum for parameter direction
     */
    public enum Direction_travelTimeGetCompareOverlay: String { 
        case average = "Average"
        case from = "From"
        case to = "To"
    }

    /**
     Gets the TravelTime overlay.
     
     - parameter z: (path) The zoom level. 
     - parameter pinLat: (path) The latitude of the pin. 
     - parameter pinLon: (path) The longitude of the pin. 
     - parameter mapCenterLat: (path) The map center latitude. 
     - parameter mapCenterLon: (path) The map center longitude. 
     - parameter scenarioTitle: (query) The title of the scenario. 
     - parameter timeOfDayId: (query) The id for the time of day (AM/INTER/PM) 
     - parameter modeId: (query) The id of the mode. 
     - parameter width: (path) The width of the requested overlay. 
     - parameter height: (path) The height of the requested overlay. 
     - parameter direction: (query) The direction of travel. 
     - parameter travelTimeInterval: (query) The total minutes between the travel time bands 
     - parameter compareType: (query)  
     - parameter compareValue: (query)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func travelTimeGetCompareOverlay(z: Int32, pinLat: Double, pinLon: Double, mapCenterLat: Double, mapCenterLon: Double, scenarioTitle: String, timeOfDayId: String, modeId: String, width: Int32, height: Int32, direction: Direction_travelTimeGetCompareOverlay, travelTimeInterval: Int32, compareType: String, compareValue: String, completion: @escaping ((_ data: Object?,_ error: Error?) -> Void)) {
        travelTimeGetCompareOverlayWithRequestBuilder(z: z, pinLat: pinLat, pinLon: pinLon, mapCenterLat: mapCenterLat, mapCenterLon: mapCenterLon, scenarioTitle: scenarioTitle, timeOfDayId: timeOfDayId, modeId: modeId, width: width, height: height, direction: direction, travelTimeInterval: travelTimeInterval, compareType: compareType, compareValue: compareValue).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }

    /**
     Gets the TravelTime overlay.
     
     - parameter z: (path) The zoom level. 
     - parameter pinLat: (path) The latitude of the pin. 
     - parameter pinLon: (path) The longitude of the pin. 
     - parameter mapCenterLat: (path) The map center latitude. 
     - parameter mapCenterLon: (path) The map center longitude. 
     - parameter scenarioTitle: (query) The title of the scenario. 
     - parameter timeOfDayId: (query) The id for the time of day (AM/INTER/PM) 
     - parameter modeId: (query) The id of the mode. 
     - parameter width: (path) The width of the requested overlay. 
     - parameter height: (path) The height of the requested overlay. 
     - parameter direction: (query) The direction of travel. 
     - parameter travelTimeInterval: (query) The total minutes between the travel time bands 
     - parameter compareType: (query)  
     - parameter compareValue: (query)  
     - returns: Observable<Object>
     */
    open class func travelTimeGetCompareOverlay(z: Int32, pinLat: Double, pinLon: Double, mapCenterLat: Double, mapCenterLon: Double, scenarioTitle: String, timeOfDayId: String, modeId: String, width: Int32, height: Int32, direction: Direction_travelTimeGetCompareOverlay, travelTimeInterval: Int32, compareType: String, compareValue: String) -> Observable<Object> {
        return Observable.create { observer -> Disposable in
            travelTimeGetCompareOverlay(z: z, pinLat: pinLat, pinLon: pinLon, mapCenterLat: mapCenterLat, mapCenterLon: mapCenterLon, scenarioTitle: scenarioTitle, timeOfDayId: timeOfDayId, modeId: modeId, width: width, height: height, direction: direction, travelTimeInterval: travelTimeInterval, compareType: compareType, compareValue: compareValue) { data, error in
                if let error = error {
                    observer.on(.error(error as Error))
                } else {
                    observer.on(.next(data!))
                }
                observer.on(.completed)
            }
            return Disposables.create()
        }
    }

    /**
     Gets the TravelTime overlay.
     - GET /TravelTimes/compareOverlay/{z}/mapcenter/{mapCenterLat}/{mapCenterLon}/pinlocation/{pinLat}/{pinLon}/dimensions/{width}/{height}
     - examples: [{contentType=application/json, example={ }}, {contentType=application/xml, example=<null>
</null>}]
     - examples: [{contentType=application/json, example={ }}, {contentType=application/xml, example=<null>
</null>}]
     
     - parameter z: (path) The zoom level. 
     - parameter pinLat: (path) The latitude of the pin. 
     - parameter pinLon: (path) The longitude of the pin. 
     - parameter mapCenterLat: (path) The map center latitude. 
     - parameter mapCenterLon: (path) The map center longitude. 
     - parameter scenarioTitle: (query) The title of the scenario. 
     - parameter timeOfDayId: (query) The id for the time of day (AM/INTER/PM) 
     - parameter modeId: (query) The id of the mode. 
     - parameter width: (path) The width of the requested overlay. 
     - parameter height: (path) The height of the requested overlay. 
     - parameter direction: (query) The direction of travel. 
     - parameter travelTimeInterval: (query) The total minutes between the travel time bands 
     - parameter compareType: (query)  
     - parameter compareValue: (query)  

     - returns: RequestBuilder<Object> 
     */
    open class func travelTimeGetCompareOverlayWithRequestBuilder(z: Int32, pinLat: Double, pinLon: Double, mapCenterLat: Double, mapCenterLon: Double, scenarioTitle: String, timeOfDayId: String, modeId: String, width: Int32, height: Int32, direction: Direction_travelTimeGetCompareOverlay, travelTimeInterval: Int32, compareType: String, compareValue: String) -> RequestBuilder<Object> {
        var path = "/TravelTimes/compareOverlay/{z}/mapcenter/{mapCenterLat}/{mapCenterLon}/pinlocation/{pinLat}/{pinLon}/dimensions/{width}/{height}"
        path = path.replacingOccurrences(of: "{z}", with: z.asParameter, options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{pinLat}", with: pinLat.asParameter, options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{pinLon}", with: pinLon.asParameter, options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{mapCenterLat}", with: mapCenterLat.asParameter, options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{mapCenterLon}", with: mapCenterLon.asParameter, options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{width}", with: width.asParameter, options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{height}", with: height.asParameter, options: .literal, range: nil)
        let URLString = RxTfLAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "scenarioTitle": scenarioTitle, 
            "timeOfDayId": timeOfDayId, 
            "modeId": modeId, 
            "direction": direction.rawValue, 
            "travelTimeInterval": travelTimeInterval.encodeToJSON(), 
            "compareType": compareType, 
            "compareValue": compareValue
        ])
        

        let requestBuilder: RequestBuilder<Object>.Type = RxTfLAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     * enum for parameter direction
     */
    public enum Direction_travelTimeGetOverlay: String { 
        case average = "Average"
        case from = "From"
        case to = "To"
    }

    /**
     Gets the TravelTime overlay.
     
     - parameter z: (path) The zoom level. 
     - parameter pinLat: (path) The latitude of the pin. 
     - parameter pinLon: (path) The longitude of the pin. 
     - parameter mapCenterLat: (path) The map center latitude. 
     - parameter mapCenterLon: (path) The map center longitude. 
     - parameter scenarioTitle: (query) The title of the scenario. 
     - parameter timeOfDayId: (query) The id for the time of day (AM/INTER/PM) 
     - parameter modeId: (query) The id of the mode. 
     - parameter width: (path) The width of the requested overlay. 
     - parameter height: (path) The height of the requested overlay. 
     - parameter direction: (query) The direction of travel. 
     - parameter travelTimeInterval: (query) The total minutes between the travel time bands 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func travelTimeGetOverlay(z: Int32, pinLat: Double, pinLon: Double, mapCenterLat: Double, mapCenterLon: Double, scenarioTitle: String, timeOfDayId: String, modeId: String, width: Int32, height: Int32, direction: Direction_travelTimeGetOverlay, travelTimeInterval: Int32, completion: @escaping ((_ data: Object?,_ error: Error?) -> Void)) {
        travelTimeGetOverlayWithRequestBuilder(z: z, pinLat: pinLat, pinLon: pinLon, mapCenterLat: mapCenterLat, mapCenterLon: mapCenterLon, scenarioTitle: scenarioTitle, timeOfDayId: timeOfDayId, modeId: modeId, width: width, height: height, direction: direction, travelTimeInterval: travelTimeInterval).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }

    /**
     Gets the TravelTime overlay.
     
     - parameter z: (path) The zoom level. 
     - parameter pinLat: (path) The latitude of the pin. 
     - parameter pinLon: (path) The longitude of the pin. 
     - parameter mapCenterLat: (path) The map center latitude. 
     - parameter mapCenterLon: (path) The map center longitude. 
     - parameter scenarioTitle: (query) The title of the scenario. 
     - parameter timeOfDayId: (query) The id for the time of day (AM/INTER/PM) 
     - parameter modeId: (query) The id of the mode. 
     - parameter width: (path) The width of the requested overlay. 
     - parameter height: (path) The height of the requested overlay. 
     - parameter direction: (query) The direction of travel. 
     - parameter travelTimeInterval: (query) The total minutes between the travel time bands 
     - returns: Observable<Object>
     */
    open class func travelTimeGetOverlay(z: Int32, pinLat: Double, pinLon: Double, mapCenterLat: Double, mapCenterLon: Double, scenarioTitle: String, timeOfDayId: String, modeId: String, width: Int32, height: Int32, direction: Direction_travelTimeGetOverlay, travelTimeInterval: Int32) -> Observable<Object> {
        return Observable.create { observer -> Disposable in
            travelTimeGetOverlay(z: z, pinLat: pinLat, pinLon: pinLon, mapCenterLat: mapCenterLat, mapCenterLon: mapCenterLon, scenarioTitle: scenarioTitle, timeOfDayId: timeOfDayId, modeId: modeId, width: width, height: height, direction: direction, travelTimeInterval: travelTimeInterval) { data, error in
                if let error = error {
                    observer.on(.error(error as Error))
                } else {
                    observer.on(.next(data!))
                }
                observer.on(.completed)
            }
            return Disposables.create()
        }
    }

    /**
     Gets the TravelTime overlay.
     - GET /TravelTimes/overlay/{z}/mapcenter/{mapCenterLat}/{mapCenterLon}/pinlocation/{pinLat}/{pinLon}/dimensions/{width}/{height}
     - examples: [{contentType=application/json, example={ }}, {contentType=application/xml, example=<null>
</null>}]
     - examples: [{contentType=application/json, example={ }}, {contentType=application/xml, example=<null>
</null>}]
     
     - parameter z: (path) The zoom level. 
     - parameter pinLat: (path) The latitude of the pin. 
     - parameter pinLon: (path) The longitude of the pin. 
     - parameter mapCenterLat: (path) The map center latitude. 
     - parameter mapCenterLon: (path) The map center longitude. 
     - parameter scenarioTitle: (query) The title of the scenario. 
     - parameter timeOfDayId: (query) The id for the time of day (AM/INTER/PM) 
     - parameter modeId: (query) The id of the mode. 
     - parameter width: (path) The width of the requested overlay. 
     - parameter height: (path) The height of the requested overlay. 
     - parameter direction: (query) The direction of travel. 
     - parameter travelTimeInterval: (query) The total minutes between the travel time bands 

     - returns: RequestBuilder<Object> 
     */
    open class func travelTimeGetOverlayWithRequestBuilder(z: Int32, pinLat: Double, pinLon: Double, mapCenterLat: Double, mapCenterLon: Double, scenarioTitle: String, timeOfDayId: String, modeId: String, width: Int32, height: Int32, direction: Direction_travelTimeGetOverlay, travelTimeInterval: Int32) -> RequestBuilder<Object> {
        var path = "/TravelTimes/overlay/{z}/mapcenter/{mapCenterLat}/{mapCenterLon}/pinlocation/{pinLat}/{pinLon}/dimensions/{width}/{height}"
        path = path.replacingOccurrences(of: "{z}", with: z.asParameter, options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{pinLat}", with: pinLat.asParameter, options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{pinLon}", with: pinLon.asParameter, options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{mapCenterLat}", with: mapCenterLat.asParameter, options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{mapCenterLon}", with: mapCenterLon.asParameter, options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{width}", with: width.asParameter, options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{height}", with: height.asParameter, options: .literal, range: nil)
        let URLString = RxTfLAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "scenarioTitle": scenarioTitle, 
            "timeOfDayId": timeOfDayId, 
            "modeId": modeId, 
            "direction": direction.rawValue, 
            "travelTimeInterval": travelTimeInterval.encodeToJSON()
        ])
        

        let requestBuilder: RequestBuilder<Object>.Type = RxTfLAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
