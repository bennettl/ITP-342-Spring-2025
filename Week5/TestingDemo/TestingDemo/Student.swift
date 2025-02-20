//
//  Student.swift
//  TestingDemo
//
//  Created by Bennett Lee on 2/19/25.
//

import Foundation

struct Student {
    let name: String
}

class StudentManager {
  var students = [Student]()

   var numberOfStudents: Int{
      students.count
   }

   func student(at index: Int) -> Student{
      return students[index]
   }

   func insert(student: Student, at index: Int){
      students.insert(student, at: index)
   }

   func remove(at index: Int){
      students.remove(at: index)
   }
}
