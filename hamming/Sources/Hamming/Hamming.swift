//Solution goes in Sources

import Foundation

struct Hamming {
  static func compute(_ original: String, against: String) -> Int? {
    guard original.count == against.count else {
      return nil
    }
    
    let originalArray = Array(original)
    let againstArray = Array(against)
    var diffCnt = 0
    
    for position in stride(from: 0, through: originalArray.count - 1, by: 1) where originalArray != againstArray{
      if originalArray[position] != againstArray[position] {
        diffCnt += 1
      }
    }
    return diffCnt
  }
}
