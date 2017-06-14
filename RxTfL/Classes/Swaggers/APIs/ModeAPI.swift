//
// ModeAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire
import RxSwift



open class ModeAPI: APIBase {
    /**
     Gets the next arrival predictions for all stops of a given mode
     
     - parameter mode: (path) A mode name e.g. tube, dlr 
     - parameter count: (query) A number of arrivals to return for each stop, -1 to return all available. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func modeArrivals(mode: String, count: Int32? = nil, completion: @escaping ((_ data: [Prediction]?,_ error: Error?) -> Void)) {
        modeArrivalsWithRequestBuilder(mode: mode, count: count).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }

    /**
     Gets the next arrival predictions for all stops of a given mode
     
     - parameter mode: (path) A mode name e.g. tube, dlr 
     - parameter count: (query) A number of arrivals to return for each stop, -1 to return all available. (optional)
     - returns: Observable<[Prediction]>
     */
    open class func modeArrivals(mode: String, count: Int32? = nil) -> Observable<[Prediction]> {
        return Observable.create { observer -> Disposable in
            modeArrivals(mode: mode, count: count) { data, error in
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
     Gets the next arrival predictions for all stops of a given mode
     - GET /Mode/{mode}/Arrivals
     - examples: [{contentType=application/json, example=[ {
  "modeName" : "aeiou",
  "bearing" : "aeiou",
  "timing" : {
    "read" : "2000-01-23T04:56:07.000+00:00",
    "insert" : "2000-01-23T04:56:07.000+00:00",
    "received" : "2000-01-23T04:56:07.000+00:00",
    "source" : "2000-01-23T04:56:07.000+00:00",
    "countdownServerAdjustment" : "aeiou",
    "sent" : "2000-01-23T04:56:07.000+00:00"
  },
  "lineId" : "aeiou",
  "lineName" : "aeiou",
  "destinationNaptanId" : "aeiou",
  "towards" : "aeiou",
  "currentLocation" : "aeiou",
  "timeToLive" : "2000-01-23T04:56:07.000+00:00",
  "expectedArrival" : "2000-01-23T04:56:07.000+00:00",
  "naptanId" : "aeiou",
  "destinationName" : "aeiou",
  "operationType" : 123,
  "stationName" : "aeiou",
  "id" : "aeiou",
  "vehicleId" : "aeiou",
  "platformName" : "aeiou",
  "timeToStation" : 123,
  "direction" : "aeiou",
  "timestamp" : "2000-01-23T04:56:07.000+00:00"
} ]}, {contentType=application/xml, example=<null>
  <id>aeiou</id>
  <operationType>123</operationType>
  <vehicleId>aeiou</vehicleId>
  <naptanId>aeiou</naptanId>
  <stationName>aeiou</stationName>
  <lineId>aeiou</lineId>
  <lineName>aeiou</lineName>
  <platformName>aeiou</platformName>
  <direction>aeiou</direction>
  <bearing>aeiou</bearing>
  <destinationNaptanId>aeiou</destinationNaptanId>
  <destinationName>aeiou</destinationName>
  <timestamp>2000-01-23T04:56:07.000Z</timestamp>
  <timeToStation>123</timeToStation>
  <currentLocation>aeiou</currentLocation>
  <towards>aeiou</towards>
  <expectedArrival>2000-01-23T04:56:07.000Z</expectedArrival>
  <timeToLive>2000-01-23T04:56:07.000Z</timeToLive>
  <modeName>aeiou</modeName>
</null>}]
     - examples: [{contentType=application/json, example=[ {
  "modeName" : "aeiou",
  "bearing" : "aeiou",
  "timing" : {
    "read" : "2000-01-23T04:56:07.000+00:00",
    "insert" : "2000-01-23T04:56:07.000+00:00",
    "received" : "2000-01-23T04:56:07.000+00:00",
    "source" : "2000-01-23T04:56:07.000+00:00",
    "countdownServerAdjustment" : "aeiou",
    "sent" : "2000-01-23T04:56:07.000+00:00"
  },
  "lineId" : "aeiou",
  "lineName" : "aeiou",
  "destinationNaptanId" : "aeiou",
  "towards" : "aeiou",
  "currentLocation" : "aeiou",
  "timeToLive" : "2000-01-23T04:56:07.000+00:00",
  "expectedArrival" : "2000-01-23T04:56:07.000+00:00",
  "naptanId" : "aeiou",
  "destinationName" : "aeiou",
  "operationType" : 123,
  "stationName" : "aeiou",
  "id" : "aeiou",
  "vehicleId" : "aeiou",
  "platformName" : "aeiou",
  "timeToStation" : 123,
  "direction" : "aeiou",
  "timestamp" : "2000-01-23T04:56:07.000+00:00"
} ]}, {contentType=application/xml, example=<null>
  <id>aeiou</id>
  <operationType>123</operationType>
  <vehicleId>aeiou</vehicleId>
  <naptanId>aeiou</naptanId>
  <stationName>aeiou</stationName>
  <lineId>aeiou</lineId>
  <lineName>aeiou</lineName>
  <platformName>aeiou</platformName>
  <direction>aeiou</direction>
  <bearing>aeiou</bearing>
  <destinationNaptanId>aeiou</destinationNaptanId>
  <destinationName>aeiou</destinationName>
  <timestamp>2000-01-23T04:56:07.000Z</timestamp>
  <timeToStation>123</timeToStation>
  <currentLocation>aeiou</currentLocation>
  <towards>aeiou</towards>
  <expectedArrival>2000-01-23T04:56:07.000Z</expectedArrival>
  <timeToLive>2000-01-23T04:56:07.000Z</timeToLive>
  <modeName>aeiou</modeName>
</null>}]
     
     - parameter mode: (path) A mode name e.g. tube, dlr 
     - parameter count: (query) A number of arrivals to return for each stop, -1 to return all available. (optional)

     - returns: RequestBuilder<[Prediction]> 
     */
    open class func modeArrivalsWithRequestBuilder(mode: String, count: Int32? = nil) -> RequestBuilder<[Prediction]> {
        var path = "/Mode/{mode}/Arrivals"
        path = path.replacingOccurrences(of: "{mode}", with: "\(mode)", options: .literal, range: nil)
        let URLString = RxTfLAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "count": count?.encodeToJSON()
        ])
        

        let requestBuilder: RequestBuilder<[Prediction]>.Type = RxTfLAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Returns the service type active for a mode.              Currently only supports tube
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func modeGetActiveServiceTypes(completion: @escaping ((_ data: [ActiveServiceType]?,_ error: Error?) -> Void)) {
        modeGetActiveServiceTypesWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }

    /**
     Returns the service type active for a mode.              Currently only supports tube
     
     - returns: Observable<[ActiveServiceType]>
     */
    open class func modeGetActiveServiceTypes() -> Observable<[ActiveServiceType]> {
        return Observable.create { observer -> Disposable in
            modeGetActiveServiceTypes() { data, error in
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
     Returns the service type active for a mode.              Currently only supports tube
     - GET /Mode/ActiveServiceTypes
     - examples: [{contentType=application/json, example=[ {
  "mode" : "aeiou",
  "serviceType" : "aeiou"
} ]}, {contentType=application/xml, example=<null>
  <mode>aeiou</mode>
  <serviceType>aeiou</serviceType>
</null>}]
     - examples: [{contentType=application/json, example=[ {
  "mode" : "aeiou",
  "serviceType" : "aeiou"
} ]}, {contentType=application/xml, example=<null>
  <mode>aeiou</mode>
  <serviceType>aeiou</serviceType>
</null>}]

     - returns: RequestBuilder<[ActiveServiceType]> 
     */
    open class func modeGetActiveServiceTypesWithRequestBuilder() -> RequestBuilder<[ActiveServiceType]> {
        let path = "/Mode/ActiveServiceTypes"
        let URLString = RxTfLAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<[ActiveServiceType]>.Type = RxTfLAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
