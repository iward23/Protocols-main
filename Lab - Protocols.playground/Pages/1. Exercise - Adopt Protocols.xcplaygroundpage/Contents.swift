/*:
 ## Exercise - Adopt Protocols: CustomStringConvertible, Equatable, and Comparable
 
 Create a `Human` class with two properties: `name` of type `String`, and `age` of type `Int`. You'll need to create a memberwise initializer for the class. Initialize two `Human` instances.
 */

/*:
 Make the `Human` class adopt the `CustomStringConvertible`. Print both of your previously initialized `Human` objects.
 */
class Human: CustomStringConvertible, Equatable, Comparable{
    let name: String
    let age: Int
    
    init(name: String, age: Int){
        self.name = name
        self.age = age
    }
    var description: String{
        return "Your name is \(name), and you are \(age) years old"
    }
    
    static func ==(h1: Human, h2: Human) -> Bool
    {
        return h1.age == h2.age && h1.name == h2.name
    }
    
    static func < (h1: Human, h2: Human) -> Bool
    {
        return h1.name < h2.name
    }
    
}
let h0 = Human(name: "Cindy", age: 13)
let h1 = Human(name: "Micheal", age: 47)
let h2 = Human(name: "Jake", age: 12)
print(h0)
    
print(h1 == h2)

var human:[Human] = [h0, h1, h2]
var sortedHuman = human.sorted(by: <)

for h in sortedHuman
{
    print(h)
}




/*:
 Make the `Human` class adopt the `Equatable` protocol. Two instances of `Human` should be considered equal if their names and ages are identical to one another. Print the result of a boolean expression evaluating whether or not your two previously initialized `Human` objects are equal to eachother (using `==`). Then print the result of a boolean expression evaluating whether or not your two previously initialized `Human` objects are not equal to eachother (using `!=`).
 */


/*:
 Make the `Human` class adopt the `Comparable` protocol. Sorting should be based on age. Create another three instances of a `Human`, then create an array called `people` of type `[Human]` with all of the `Human` objects that you have initialized. Create a new array called `sortedPeople` of type `[Human]` that is the `people` array sorted by age.
 */



import Foundation


//: page 1 of 2  |  [Next: App Exercise - Printable Workouts](@next)
