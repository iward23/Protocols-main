/*:
 ## Exercise - Create a Protocol
 
 Create a protocol called `Vehicle` with two requirements: a nonsettable `numberOfWheels` property of type `Int`, and a function called `drive()`.
 */
protocol Vehicle{
    var numberOfWheels: Int{get}
    func drive()
}

/*:
 Define a `Car` struct that implements the `Vehicle` protocol. `numberOfWheels` should return a value of 4, and `drive()` should print "Vroom, vroom!" Create an instance of `Car`, print its number of wheels, then call `drive()`.
 */
struct Car: Vehicle{
    static let name = "Tesla"
    var numberOfWheels: Int = 4
    func drive()
    {
        print("Vroom Vroom")
    }
}

let myCar = Car.init()
print("The car has \(myCar.number) wheels.")
myCar.drive()
Car.name
/*:
 Define a `Bike` struct that implements the `Vehicle` protocol. `numberOfWheels` should return a value of 2, and `drive()` should print "Begin pedaling!". Create an instance of `Bike`, print its number of wheels, then call `drive()`.
 */


//: [Previous](@previous)  |  page 2 of 2  |  [Next: App Exercise - Similar Workouts](@next)
