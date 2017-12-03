/*:
# UIImageView
An object that displays a single image or a sequence of animated images in your interface.

[Apple Documentation for UIImageView](https://developer.apple.com/documentation/uikit/uiimageview)

## Included Extensions
1. UIImageView+DownloadFrom
*/

import UIKit

extension UIImageView {
	///		Fills the UIImageView with the image downloaded
	/// from the given URL string.
	///
	/// - Parameter address: image download URL
	func downloadFrom(_ address: String) {		
		guard let url = URL(string: address) else { return }
		
		URLSession.shared.dataTask(with: url) { (data, response, error) in
			guard let httpURLResponse = response as? HTTPURLResponse, httpURLResponse.statusCode == 200,
						let mimeType = response?.mimeType, mimeType.hasPrefix("image"),
						let data = data, error == nil,
						let image = UIImage(data: data)
				else { return }
			
			DispatchQueue.main.async {
				self.image = image
			}
		}.resume()
	}
}
