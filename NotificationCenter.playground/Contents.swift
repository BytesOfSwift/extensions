/*:
# NotificationCenter
[Apple Documentation for NotificationCenter](https://developer.apple.com/documentation/notificationcenter)
*/

import Foundation

extension NotificationCenter {
	/// 	An enum to store all the possible cases for notification
	/// center messages in a project. This isn't mandatory but just
	/// a best practice to make the below usage type-safe.
	///
	/// - messageOne: a dummy message string
	/// - messageTwo: another dummy message string
	enum NotificationCenterMessageName: String {
		case messageOne = "messageOne"
		case messageTwo = "messageTwo"
	}
	
	/// 	Removes the notification observer on the default
	/// notification center.
	///
	/// - Parameters:
	///   - observer: <#observer description#>
	///   - name: <#name description#>
	///   - object: <#object description#>
	static func removeObserver(observer: Any, name: NotificationCenterMessageName, object: Any? = nil) {
		NotificationCenter.default.removeObserver(observer, name: Notification.Name(name.rawValue), object: object)
	}
	
	/// 	Adds a notification observer for the default
	/// notification center.
	///
	/// - Parameters:
	///   - observer: <#observer description#>
	///   - selector: <#selector description#>
	///   - name: <#name description#>
	///   - object: <#object description#>
	static func addObserver(observer: Any, selector: Selector, name: NotificationCenterMessageName, object: Any? = nil) {
		NotificationCenter.default.addObserver(observer, selector: selector, name: Notification.Name(name.rawValue), object: object)
	}
	
	/// 	Posts a notification on the default notification
	/// center. Configured to be executed on the main thread
	/// so that it can perform.
	///
	/// - Parameters:
	///   - name: <#name description#>
	///   - object: <#object description#>
	static func post(name: NotificationCenterMessageName, object: Any? = nil) {
		DispatchQueue.main.async {
			NotificationCenter.default.post(name: Notification.Name(name.rawValue), object: object)
		}
	}
}
