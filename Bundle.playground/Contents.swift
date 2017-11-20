/*:
# Bundle
A representation of the code and resources stored in a bundle directory on disk.
SDKs

For more information on the Bundle framework, please checkout [Apple Docs](https://developer.apple.com/documentation/foundation/bundle).

## Included Extensions:

  1. Bundle+BuildNumber
  2. Bundle+VersionNumber
	3. Bundle+VersionMajorNumber
	4. Bundle+VersionMinorNumber
	5. Bundle+VersionPatchNumber
*/

import Foundation

extension Bundle {
	///    Retrieves the `infoDictionary` dictionary inside Bundle and
	/// returns the value accessed with the key `CFBundleVersion`.
	///
	/// - Returns: the build number of the Xcode project
	class func buildNumber() -> String {
		guard let infoDictionary = Bundle.main.infoDictionary else { return "unknown" }
		guard let buildNumber = infoDictionary["CFBundleVersion"] as? String else { return "unknown" }
		
		return buildNumber
	}
	
	///    Retrieves the `infoDictionary` dictionary inside Bundle and
	/// returns the value accessed with the key `CFBundleShortVersionString`.
	///
	/// - Returns: the version number of the Xcode project as a whole(e.g. 1.0.3)
	class func versionNumber() -> String {
		guard let infoDictionary = Bundle.main.infoDictionary else { return "unknown" }
		guard let versionNumber = infoDictionary["CFBundleShortVersionString"] as? String else { return "unknwon" }
		
		return versionNumber
	}
	
	///    Retrieves the `infoDictionary` dictionary inside Bundle, retrieves
	/// the value accessed with the key `CFBundleShortVersionString` and parses
	/// it to return the version major number.
	///
	/// - Returns: the version number of the Xcode project as a whole(e.g. 1.0.3)
	class func versionMajorNumber() -> String {
		guard let infoDictionary = Bundle.main.infoDictionary else { return "unknown" }
		guard let versionNumber = infoDictionary["CFBundleShortVersionString"] as? String else { return "unknwon" }
		
		return versionNumber.components(separatedBy: ".")[0]
	}
	
	///    Retrieves the `infoDictionary` dictionary inside Bundle, retrieves
	/// the value accessed with the key `CFBundleShortVersionString` and parses
	/// it to return the version minor number.
	///
	/// - Returns: the version number of the Xcode project as a whole(e.g. 1.0.3)
	class func versionMinorNumber() -> String {
		guard let infoDictionary = Bundle.main.infoDictionary else { return "unknown" }
		guard let versionNumber = infoDictionary["CFBundleShortVersionString"] as? String else { return "unknwon" }
		
		return versionNumber.components(separatedBy: ".")[1]
	}
	
	///    Retrieves the `infoDictionary` dictionary inside Bundle, retrieves
	/// the value accessed with the key `CFBundleShortVersionString` and parses
	/// it to return the version patch number.
	///
	/// - Returns: the version number of the Xcode project as a whole(e.g. 1.0.3)
	class func versionPatchNumber() -> String {
		guard let infoDictionary = Bundle.main.infoDictionary else { return "unknown" }
		guard let versionNumber = infoDictionary["CFBundleShortVersionString"] as? String else { return "unknwon" }
		
		return versionNumber.components(separatedBy: ".")[2]
	}
}
