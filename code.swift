import Foundation


protocol Printable {
    associatedtype DataType
    func printValue() -> String
}


struct Printer<T>: Printable {
    typealias DataType = T
    
    var value: T
    
    func printValue() -> String {
        return "Value: \(value)"
    }
}


extension Printable where DataType == Int {
    func printValue() -> String {
        return "Integer Value: \(value)"
    }
}


let intPrinter = Printer(value: 10)
print(intPrinter.printValue()) 

let stringPrinter = Printer(value: "Hello")
print(stringPrinter.printValue()) 
