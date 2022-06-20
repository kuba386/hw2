import Foundation

class Student {
    var name: String
    var surname: String
    
    init(name: String, surname: String){
        self.name = name
        self.surname = surname
    }
}

class Conference {
    
    var members:[Student] = []
    
    func addStudents(Student: Student) {
        members.append(Student)
    }
    
    func printInfoStudent() {
        var sumStudent = 0
        var sumSchoolchildren = 0
        
        for member in members {
            if member is Students{
                sumStudent = sumStudent + 1
            } else if member is Schoolchildren{
                sumSchoolchildren = sumSchoolchildren + 1
            }
        }
        
        print("Количество студентов-\(sumStudent), Количество школьников-\(sumSchoolchildren)")
    }
}

class Schoolchildren: Student {
    
}

class Students: Student {
    
}



let x = Students(name: "ron", surname: "li")
let s = Students(name: "son", surname: "don")

let a = Schoolchildren(name: "bbb", surname: "dsa")
let z = Schoolchildren(name: "aaaa", surname: "dsa")

var conference =  Conference()

conference.addStudents(Student: x)
conference.addStudents(Student: s)
conference.addStudents(Student: a)

conference.printInfoStudent()
