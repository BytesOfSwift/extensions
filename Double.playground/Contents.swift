/*:
# Double
A double-precision, floating-point value type.

For more information on the Double library, please checkout [Apple Docs](https://developer.apple.com/documentation/foundation/bundle).

## Included Extensions
	1. Double+Scaled
	2. Double+Scale
	3. Double+InMinutesAndSeconds
*/

import Foundation

/*:
## Scaling
*/
let pi = Double.pi

extension Double {
	/// 	Returns the scaled version of the number
	/// with the requested precision.
	///
	/// - parameter digits: the count of digits to be remaining on the right-hand side
	///
	/// - returns: the scaled number
	func scaled(to digits: Int) -> Double {
		let divisor = pow(10.0, Double(digits))
		
		return (self * divisor).rounded() / divisor
	}
	
	/// Scales the given number to the requested precision.
	///
	/// - Parameter digits: the count of digits to be remaining on the right-hand side
	mutating func scale(to digits: Int) {
		let divisor = pow(10.0, Double(digits))
		
		self = (self * divisor).rounded() / divisor
	}
}

/*:
### Scaling Example
*/
let piScaled = pi.scaled(to: 6)

//pi.scale(to: 6)		// this will cause a compile-time error because `pi` is defined as a constant
var piMutating = Double.pi
piMutating.scale(to: 6)


/*:
## Time Interval Conversion
*/
extension Double {
	/// 	Converts the given `Double` number representing seconds
	/// to a `TimeInterval`
	///
	/// - Returns: the given `Double` value as a `TimeInterval`
	func convertToTimeInterval() -> String {
		let formatter = DateComponentsFormatter()
		formatter.unitsStyle = .positional
		formatter.zeroFormattingBehavior = .pad
		formatter.allowedUnits = [.hour, .minute, .second]
		
		return formatter.string(from: TimeInterval(self))!
	}
}

/*:
### Time Interval Example
*/
120.convertToTimeInterval()
234.convertToTimeInterval()
4892.convertToTimeInterval()
