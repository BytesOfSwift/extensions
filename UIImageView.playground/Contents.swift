/*:
# UIImageView
[Apple Documentation for UIImageView](https://developer.apple.com/documentation/uikit/uiimageview)
*/

import UIKit

extension UIImageView {
	///		Fills the UIImageView with the image downloaded
	/// from the URL given.
	///
	/// - Parameter address: image download URL
	func downloadFrom(_ address: String) {
//		backgroundColor = UIColor.gray
//		image = UIImage(named: "PlaceHolderIcon")
		contentMode = .center
		
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

let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 120, height: 120))
imageView.downloadFrom("https://unsplash.com/photos/1LR2wt9dCSk")


