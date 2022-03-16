import UIKit

struct Student {
    var idNumber: Int
    var firstName: String
    var middleName: String
    var lastName: String
    var registrations: [Registration] = []
    
    init(idNumber: Int, firstName: String, middleName: String, lastName: String){
        self.idNumber = idNumber
        self.firstName = firstName
        self.middleName = middleName
        self.lastName = lastName
    }
    
    func GetMiddleInitial() -> Character {
        var temp = self.middleName.uppercased()
        return temp.remove(at: middleName.startIndex)
    }
    
    func GetFullName() -> String {
        return self.lastName + ", " + self.firstName + " " + String(GetMiddleInitial()) + "."
    }
    
    mutating func AddRegistration(newRegistration: Registration) {
        self.registrations.append(newRegistration)
    }
    
    static func GetInformation(student: Student) -> String {
        var str1 = """
        ID Number: \(String(student.idNumber))            \t\t\t\tSchool Year: \(String(student.registrations[0].GetAcademicYear()))
        Full Name: \(String(student.GetFullName()))       \t\t\tSemester: \(String(student.registrations[0].GetSemesterDesc()))
        __________________________________________________________________________________
        Subject \t\t\t Description \t\t\t\t\t Schedule \t\t\t\t\t
        """
        
        for crs in student.registrations[0].courses {
            str1 = str1 + """
            \n\(crs.code)\t\t\t\t \(crs.description)  \t\t\t \(crs.schedule)\t\t\t
            """
        }
        
        return str1
    }
}

struct Registration {
    var schoolYear: Int
    var semester: Int
    var program: String
    var courses: [Course] = []
    
    init(schoolYear: Int, semester: Int, program: String) {
        self.schoolYear = schoolYear
        self.semester = semester
        self.program = program
    }
    
    mutating func AddCourse(newCourse: Course){
        self.courses.append(newCourse)
    }
    
    func GetAcademicYear() -> String {
        return String(schoolYear) + " - " + String(schoolYear + 1)
    }
    
    func GetSemesterDesc() -> String{
        switch(semester){
        case 1:
            return "First Semester"
        case 2:
            return "Second Semester"
        case 3:
            return "Summer"
        default:
            return "Invalid Value"
        }
    }
}

struct Course {
    var code: String
    var description: String
    var schedule: String
}

var student1 = Student(idNumber: 122918, firstName: "First", middleName: "Middle", lastName: "Last")
var regis1 = Registration(schoolYear: 2010, semester: 1, program: "IT")
var regis2 = Registration(schoolYear: 2010, semester: 1, program: "CS")
var course1 = Course(code: "4-95", description: "Philippine History", schedule: "MW 05:50p, - 8:20pm")
var course2 = Course(code: "4-96", description: "Philippine History 2", schedule: "MW 05:55p, - 8:20pm")
var course3 = Course(code: "4-97", description: "Philippine History 3", schedule: "MW 06:00p, - 8:20pm")

student1.AddRegistration(newRegistration: regis1)
student1.AddRegistration(newRegistration: regis2)
student1.registrations[0].AddCourse(newCourse: course1)
student1.registrations[0].AddCourse(newCourse: course2)
student1.registrations[0].AddCourse(newCourse: course3)

print(Student.GetInformation(student: student1))

