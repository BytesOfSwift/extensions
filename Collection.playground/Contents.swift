//: Playground - noun: a place where people can play

extension Collection {
	/// A Boolean value indicating whether the collection is not empty.
	///
	/// MOTIVATION: Same thing can also be achieved by `!isEmpty`. However,
	/// this extension provides better readability as it may be hard to always
	/// grasp the negation operator in the front. Therefore, merely a syntactic
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


