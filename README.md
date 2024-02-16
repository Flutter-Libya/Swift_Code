# Swift Advanced Code Example

This repository contains a Swift code example demonstrating the use of protocols with associated types, generic structs, and protocol extensions.

## Description

In this code example, we define a protocol `Printable` with an associated type `DataType` and a method `printValue()`. We then implement the protocol with a generic struct `Printer<T>`, where `T` is the type of the value to be printed. Additionally, we extend the `Printable` protocol with a default implementation for the case where `DataType` is `Int`.

## Code Structure

- `Printable` protocol:
  - Defines an associated type `DataType`.
  - Requires a method `printValue()`.

- `Printer<T>` struct:
  - Implements the `Printable` protocol.
  - Contains a value of type `T`.
  - Implements the `printValue()` method.

- Protocol Extension:
  - Extends the `Printable` protocol with a default implementation for `printValue()` when `DataType` is `Int`.

## Usage

Example usage is provided in the code:

```swift
let intPrinter = Printer(value: 10)
print(intPrinter.printValue()) // Output: Integer Value: 10

let stringPrinter = Printer(value: "Hello")
print(stringPrinter.printValue()) // Output: Value: Hello
