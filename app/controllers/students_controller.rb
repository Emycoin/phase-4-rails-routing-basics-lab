class StudentsController < ApplicationController
  def index
    students = Student.all
    render json: students
  end
  def grades
    students = Student.all
    
    newStudents = students.sort_by {|student| student.grade}
    sort = newStudents.reverse
   render json: sort
end


end
