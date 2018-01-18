/*:
# UILabel
A view that displays one or more lines of read-only text, often used in conjunction with controls to describe their intended purpose.

For more information on the UILabel class, please checkout [Apple Docs](https://developer.apple.com/documentation/uikit/uilabel).

## Included Extensions:

1. UILabel+size
*/


import UIKit

extension UILabel {
	/// 	Determines the size of the given UILabel with it's
	/// current font size.
	///
	/// - Returns: UILabel size as CGSize
	func size() -> CGSize {
		guard let text = text else { return CGSize(width: 0, height: 0) }
		guard let font = font else { return CGSize(width: 0, height: 0) }
		
		return NSString(string: text).size(withAttributes: [.font: UIFont.systemFont(ofSize: font.pointSize)])
	}
}

let label = UILabel()
label.text = "Bytes of Swift"
label.font = UIFont.systemFont(ofSize: 24)
label.size()
