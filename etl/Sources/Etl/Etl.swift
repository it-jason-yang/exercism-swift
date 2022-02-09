//Solution goes in Sources

struct ETL {
  static func transform(_ old: [Int : [String]]) -> [String : Int] {
    var result = [String : Int]()
    for key in old.keys {
      for value in old[key]! {
        result[value.lowercased()] = key
      }
    }
    return result
  }
}