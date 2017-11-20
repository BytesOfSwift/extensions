//: Playground - noun: a place where people can play

import CoreLocation

extension CLLocationCoordinate2D {
	func inNativeFormat() -> String {
		guard let currentLocation = LocationService.shared.currentLocation
			else {
				return "???"
		}
		
		let currentLocationCoordinate = CLLocation(latitude: currentLocation.latitude,
																							 longitude: currentLocation.longitude)
		
		let annotationCoordinate = CLLocation(latitude: self.latitude,
																					longitude: self.longitude)
		
		let distanceInKm = (annotationCoordinate.distance(from: currentLocationCoordinate) / 1000).scaled(to: 1)
		
		if UserDefaults.standard.string(forKey: "LengthUnit") == "mile" {
			let distanceInMiles = (distanceInKm * 0.621371).scaled(to: 1)
			return "\(distanceInMiles) miles"
		} else {
			return "\(distanceInKm) km"
		}
	}
}
