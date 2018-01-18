/*:
# Bool
A value type whose instances are either true or false.

For more information on the Bool structure, please checkout [Apple Docs](https://developer.apple.com/documentation/swift/bool).

## Included Extensions:

1. Bool+Toogle
*/

extension Bool {
	/// Toggles the value of the boolean
	///
	/// MOTIVATION
	///
	/// It gets cumbersome to toggle the values of
	///	deeply nested Bool variables.
	///
	/// EXAMPLE
	///
	///	then
	///
	/// 	myVar.prop1.prop2.enabled = !myVar.prop1.prop2.enabled
	/// now
	///
	///		myVar.prop1.prop2.enabled.toggle()
	///
	/// RESOURCE
	///
	///	[https://www.objc.io/blog/2018/01/16/toggle-extension-on-bool/](https://www.objc.io/blog/2018/01/16/toggle-extension-on-bool/)
	mutating func toggle() {
		self = !self
	}
}
