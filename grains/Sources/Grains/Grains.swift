//Solution goes in Sources

import Foundation

struct Grains{
  enum GrainsError: Error {
    case inputTooHigh(message: String)
    case inputTooLow(message: String)
  }
  
  static let total: UInt = 18_446_744_073_709_551_615
  
  static func square(_ num: Int) throws -> UInt {
    guard num >= 1 else {
      throw GrainsError.inputTooLow(message: "Input[\(num)] invalid. Input should be between 1 and 64 (inclusive)")
    }
    guard num <= 64 else {
      throw GrainsError.inputTooHigh(message: "Input[\(num)] invalid. Input should be between 1 and 64 (inclusive)")
    }
    
    return UInt(pow(2, Double(num - 1)))
  }
}