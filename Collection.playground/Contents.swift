
/*:
# Collection
A sequence whose elements can be traversed multiple times, nondestructively, and accessed by an indexed subscript.

For more information on the Collection protocol, please checkout [Apple Docs](https://developer.apple.com/documentation/swift/collection).

## Included Extensions:

1. IsNotEmpty
*/

extension Collection {
	/// A Boolean value indicating whether the collection is not empty.
	///
	/// MOTIVATION: Same thing can also be achieved by `![COLLECTION].isEmpty`. However,
	/// this extension provides better readability as it may be hard to always
	/// spot the negation operator in the front. Therefore, merely a syntactic
	/// sugar.
	///
	/// - Complexity: O(1)
	public var isNotEmpty: Bool {
		return !isEmpty
	}
}

let numbers: [Int] = [1, 2, 3, 4, 5]
//let numbers: [Int] = []

numbers.isEmpty
numbers.isNotEmpty


