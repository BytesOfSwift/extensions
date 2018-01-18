/*:
# UserDefauls
An interface to the user’s defaults database, where you store key-value pairs persistently across launches of your app.

For more information on the UserDefaults class, please checkout [Apple Docs](https://developer.apple.com/documentation/foundation/userdefaults).

## Included Extensions:

1. UserDefaults+...
*/

import Foundation

extension UserDefaults {
	enum UserDefaultsKey: String {
		case keyOne = "keyOne"
		case keyTwo = "keyTwo"
	}
	
	static func set(_ value: Any?, forKey key: UserDefaultsKey) {
		UserDefaults.standard.set(value, forKey: key.rawValue)
	}
	
	static func set(_ value: Float, forKey key: UserDefaultsKey) {
		UserDefaults.standard.set(value, forKey: key.rawValue)
	}
	
	static func set(_ value: Double, forKey key: UserDefaultsKey) {
		UserDefaults.standard.set(value, forKey: key.rawValue)
	}
	
	static func set(_ value: Int, forKey key: UserDefaultsKey) {
		UserDefaults.standard.set(value, forKey: key.rawValue)
	}
	
	static func set(_ value: Bool, forKey key: UserDefaultsKey) {
		UserDefaults.standard.set(value, forKey: key.rawValue)
	}
	
	static func set(_ value: URL?, forKey key: UserDefaultsKey) {
		UserDefaults.standard.set(value, forKey: key.rawValue)
	}
	
	static func object(forKey key: UserDefaultsKey) -> Any? {
		return UserDefaults.standard.object(forKey: key.rawValue)
	}
	
	static func url(forKey key: UserDefaultsKey) -> URL? {
		return UserDefaults.standard.url(forKey: key.rawValue)
	}
	
	static func array(forKey key: UserDefaultsKey) -> [Any]? {
		return UserDefaults.standard.array(forKey: key.rawValue)
	}
	
	static func dictionary(forKey key: UserDefaultsKey) -> [String: Any]? {
		return UserDefaults.standard.dictionary(forKey: key.rawValue)
	}
	
	static func string(forKey key: UserDefaultsKey) -> String? {
		return UserDefaults.standard.string(forKey: key.rawValue)
	}
	
	static func stringArray(forKey key: UserDefaultsKey) -> [String]? {
		return UserDefaults.standard.stringArray(forKey: key.rawValue)
	}
	
	static func data(forKey key: UserDefaultsKey) -> Data? {
		return UserDefaults.standard.data(forKey: key.rawValue)
	}
	
	static func bool(forKey key: UserDefaultsKey) -> Bool {
		return UserDefaults.standard.bool(forKey: key.rawValue)
	}
	
	static func integer(forKey key: UserDefaultsKey) -> Int {
		return UserDefaults.standard.integer(forKey: key.rawValue)
	}
	
	static func float(forKey key: UserDefaultsKey) -> Float {
		return UserDefaults.standard.float(forKey: key.rawValue)
	}
	
	static func double(forKey key: UserDefaultsKey) -> Double {
		return UserDefaults.standard.double(forKey: key.rawValue)
	}
	
	static func dictionaryRepresentation() -> [String: Any] {
		return UserDefaults.standard.dictionaryRepresentation()
	}
}
