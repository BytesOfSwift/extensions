# What is this?
Hey there, welcome to Bytes of Swift,

an ever-extending, community-driven resource for Swift extensions to maximize your productivity!

Bytes of Swift builds upon either the Swift Standard Library's solid foundations or Apple's own frameworks to make various challenging tasks easier.

# Key Features
## Type-Safe
Whenever possible, features to enable type-safety are applied/advised to avoid those pesky crashes and make your code easier to maintain.
## Best-Practices
Best practices of both coding in general and Swift are applied for the ultimate code performance and readability.
## Well Documented
All extensions are well documented so that you can fully grasp what's going on at all times.
## Included Examples
Since we make use of Swift Playgrounds, you can enjoy inline examples, where available, demonstrating the code sample you're browsing right there.

# When to use extensions?
If we take a look at the explanation on extensions on The Swift Programming Language:

> Extensions add new functionality to an existing class, structure, enumeration, or protocol type. This includes the ability to extend types for which you do not have access to the original source code (known as retroactive modeling). Extensions are similar to categories in Objective-C. (Unlike Objective-C categories, Swift extensions do not have names.)

So, extensions, as their name implies, are here to extend whatever we've. This serves a great purpose since we can make recurring tasks into extensions where they can be easily accessed.

# When **not* to use extensions?
In the end, as with every aspect of programming, extensions are bound to be criticized. They can help you a great deal but in times, they can also cripple your project and decrease your productivity.

At Bytes of Swift, we try to apply extensions not just to shorten things out but when a specific task requires encapsulation.

For instance, just because the following code sample is long to type, it doesn't mean that it should be extended.

aView.layer.corderRadius = 3.0

extension UIView {
	func cornerRadius() -> Double {
		return layer.cornerRadius
	}
}

The above example is a totally wrong usage of extensions and should definitely be avoided at all times.

All in all, don't use extensions just to shorten things out but to encapsulate recurring functionality into easily accessible positions.

# How to contribute?
If you have an extension idea or would like to provide a better alternative for a present one, please feel free to submit your piece of extension.

You can also submit extensions you've come up on the internet as long as you provide credit to the original developer.