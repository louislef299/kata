print("Hello, world!")

var myVariable = 42
myVariable = 50
let myConstant = 42

let explicitDouble: Double = 70
print(explicitDouble)
print("The value of myVariable is \(myVariable) and the value of explicitDouble is \(explicitDouble)")

var optionalString: String? = "Hello"
print(optionalString == nil)
// Prints "false"

var optionalName: String? = nil
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}
print(greeting)

let nickname: String? = nil
let fullName: String = "John Appleseed"
print("Hi \(nickname ?? fullName)")

