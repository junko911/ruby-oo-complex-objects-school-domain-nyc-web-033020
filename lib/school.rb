# code here!
require 'pry'

class School
    def initialize(school)
        @school = school
        @roster = {}
    end
    
    def add_student(name, grade)
        if @roster[grade]
            @roster[grade] << name
        else
            @roster[grade] = []
            @roster[grade] << name
        end
    end

    def roster
        @roster
    end

    def grade(num)
        @roster[num]
    end

    def sort
        sorted_roster = {}
        @roster.each { |grade, names|
            sorted_roster[grade] = names.sort
        }
        sorted_roster
    end
end

school = School.new("Bayside High School")
school.add_student("Zach Morris", 9)
school.roster
# binding.pry
