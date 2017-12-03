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
## Scaling
*/
extension Double {
	/// 	Converts the given Double formatted number representing
	/// seconds to minutes and seconds.
	///
	/// - Returns: <#return value description#>
	func inMinutesAndSeconds() -> String {
		let minutes = Int((self / 60).truncatingRemainder(dividingBy: 60))
		
		let seconds: String = {
			let seconds = Int(self.truncatingRemainder(dividingBy: 60))
			
			if seconds < 10 {
				return "0\(seconds)"
			}
			
			return "\(seconds)"
		}()
		
		return "\(minutes):" + seconds
	}
	
	/// 	Converts the given Double formatted number representing
	/// seconds to minutes and seconds.
	///
	/// - Returns: <#return value description#>
	func inMinutesAndSecond() -> (Int, Int) {
		let minutes = Int((self / 60).truncatingRemainder(dividingBy: 60))
		print(minutes)
		
		let seconds: Int = {
			let seconds = Int(self.truncatingRemainder(dividingBy: 60))
			
			return seconds
		}()
		
		return (minutes, seconds)
	}
}

(3600.0).inMinutesAndSecond()
