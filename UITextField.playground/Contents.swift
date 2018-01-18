/*:
# UITextField
An object that displays an editable text area in your interface.

For more information on the Bundle framework, please checkout [Apple Docs](https://developer.apple.com/documentation/uikit/uitextfield).

## Included Extensions:

1. UITextField+setClearButtonImage
*/


import UIKit

extension UITextField {
	/// 	Provides the ability through KVO to set the clear button image
	/// of the UITextField to the given UIImage.
	///
	/// - Parameter image: clear button image to be placed
	func setClearButtonImage(to image: UIImage) {
		clearButtonMode = .whileEditing
		guard let defaultClearButton = value(forKey: "_clearButton") as? UIButton else { return }
		defaultClearButton.setImage(image, for: .normal)
	}
}
