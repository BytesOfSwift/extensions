/*:
# UISearchBar
[Apple Documentation for UISearchBar](https://developer.apple.com/documentation/uikit/uisearchbar)
*/

import UIKit

extension UISearchBar {
	/// Sets the cancel button to the given UIImage
	///
	/// - Parameter image: the UIImage to be placed as the cancel button
	func setCancelButton(to image: UIImage) {
		let defaultCancelButton = value(forKey: "cancelButton") as! UIButton
		
		defaultCancelButton.setTitle("", for: .normal)
		defaultCancelButton.setImage(image, for: .normal)
	}
	
	/// Sets the search icon of a UISearchBar to the given color.
	///
	/// - Parameter color: the desired color
	func setSearchIconColor(to color: UIColor) {
		guard let textFieldInsideSearchBar = value(forKey: "searchField") as? UITextField else { return }
		
		guard let textFieldLeftImageView = textFieldInsideSearchBar.leftView as? UIImageView else { return }
		
		textFieldLeftImageView.image = textFieldLeftImageView.image?.withRenderingMode(.alwaysTemplate)
		
		textFieldLeftImageView.tintColor = color
	}
	
	/// Sets the placeholder text's color to the given color.
	///
	/// - Parameter color: the desired color
	func setPlaceholderColor(to color: UIColor) {
		guard let searchBarPlaceholderText = placeholder else { return }
		
		let placeholderTextAttributes = [NSAttributedStringKey.foregroundColor: color]
		
		let attributedPlaceholderText = NSAttributedString(string: searchBarPlaceholderText,
																											 attributes: placeholderTextAttributes)
		
		guard let textFieldPlaceHolder = value(forKey: "searchField") as? UITextField else { return }
		
		textFieldPlaceHolder.attributedPlaceholder = attributedPlaceholderText
	}
	
	func setBarBackgroundColor(to color: UIColor) {
		for subView in subviews {
			for innerSubview in subView.subviews {
				if innerSubview is UITextField {
					innerSubview.backgroundColor = color
				}
			}
		}
	}
	
	func retrieveTextField() -> UITextField? {
		for subView in subviews {
			for innerSubview in subView.subviews {
				if innerSubview is UITextField {
					return innerSubview as? UITextField
				}
			}
		}
		
		return nil
	}
}
