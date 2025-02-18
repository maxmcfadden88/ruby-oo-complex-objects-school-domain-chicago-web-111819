class School
attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
        end

    def add_student(student_name, grade)
        roster[grade] ||= []
        roster[grade] << student_name
        end

    def grade(student_grade)
        roster[student_grade]
        end

    def sort
        sorted = {}
        roster.each do |grade, student|
        sorted[grade] = student.sort
        end
        
        sorted
        end
    end


school = School.new("PS 10")
school.add_student("Max", 10)
school.add_student("Nina", 10)
school.add_student("Dana", 11)
p school.roster
p school.grade(10)
p school.sort