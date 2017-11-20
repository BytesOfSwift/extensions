/*:
# UITextField
[Apple Documentation for UITextField](https://developer.apple.com/documentation/uikit/uitextfield)
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
