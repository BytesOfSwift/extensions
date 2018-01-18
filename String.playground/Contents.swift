/*:
# String
A Unicode string value that is a collection of characters.

For more information on the String structure, please checkout [Apple Docs](https://developer.apple.com/documentation/swift/string).

## Included Extensions:

1. String+Size
*/

import UIKit

extension String {
	/// 	Determines the size the string will occupy if the given
	/// font size is applied on it.
	///
	/// - Parameter fontSize: the desired font size for sizing
	/// the string
	/// - Returns: the size of the string as CGSize
	func size(withFontSize fontSize: CGFloat) -> CGSize {
		return NSString(string: self).size(withAttributes: [.font: UIFont.systemFont(ofSize: fontSize)])
	}
}

let bytesOfSwift = "Bytes of Swift"
bytesOfSwift.size(withFontSize: 24)
