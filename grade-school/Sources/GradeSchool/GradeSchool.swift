//Solution goes in Sources

struct GradeSchool {
  var roster = [Int: Array<String>]()
  var sortedRoster: [Int: Array<String>] {
    var sortedRoster: [Int: Array<String>] = [:]
    for (num, students) in roster {
      var value = students
      value.sort()
      sortedRoster[num] = value
    }
//    print(sortedRoster.keys.sorted())
    return sortedRoster
  }
  
  mutating func addStudent(_ name: String, grade: Int) {
    
    if var arr = roster[grade] {
      arr.append(name)
      self.roster[grade] = arr
    } else {
      roster[grade] = [name]
    }
  }

  func studentsInGrade(_ grade: Int) -> Array<String> {
    
    var result: [String] = []
    
    for (num, students) in roster {
      if grade == num {
        for person in students {
          result.append(person)
        }
      }
    }
  
    return result
  }
}
