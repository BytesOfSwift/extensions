/*:
# UISearchBar
A text field–like control that supports text-based searches.

For more information on the Bundle framework, please checkout [Apple Docs](https://developer.apple.com/documentation/uikit/uisearchbar).

## Included Extensions
1. UISearchBar+SetCancelButton
2. UISearchBar+SetSearchIconColor
3. UISearchBar+SetPlaceHolderColor
4. UISearchBar+SetBackgroundColor
5. UISearchBar+RetrieveTextField
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
	/// - Parameter color: the UIColor for the search icon
	func setSearchIconColor(to color: UIColor) {
		guard let textFieldInsideSearchBar = value(forKey: "searchField") as? UITextField else { return }
		
		guard let textFieldLeftImageView = textFieldInsideSearchBar.leftView as? UIImageView else { return }
		
		textFieldLeftImageView.image = textFieldLeftImageView.image?.withRenderingMode(.alwaysTemplate)
		
		textFieldLeftImageView.tintColor = color
	}
	
	/// Sets the placeholder text's color to the given color.
	///
	/// - Parameter color: the UIColor for the placeholder text
	func setPlaceholderColor(to color: UIColor) {
		guard let searchBarPlaceholderText = placeholder else { return }
		
		let placeholderTextAttributes = [NSAttributedStringKey.foregroundColor: color]
		
		let attributedPlaceholderText = NSAttributedString(string: searchBarPlaceholderText,
																											 attributes: placeholderTextAttributes)
		
		guard let textFieldPlaceHolder = value(forKey: "searchField") as? UITextField else { return }
		
		textFieldPlaceHolder.attributedPlaceholder = attributedPlaceholderText
	}
	
	/// 	Sets the background color of the UITextField bar
	/// to the given color.
	///
	/// - Parameter color: the UIColor for the textfield bar
	func setBarBackgroundColor(to color: UIColor) {
		for subView in subviews {
			for innerSubview in subView.subviews {
				if innerSubview is UITextField {
					innerSubview.backgroundColor = color
				}
			}
		}
	}
	
	/// Retrieves the UITextField contained inside the UISearchBar.
	///
	/// - Returns: the UITextField inside the UISearchBar
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
