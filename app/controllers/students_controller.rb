class StudentsController < ApplicationController

  def index
    # students = Student.all
    students = if params[:name]
      Student.where("first_name LIKE ? OR last_name LIKE ?", "%#{name}%", "%#{name}%")
    else Student.all
    render json: students
    end
  end
  
  def show 
    student = Student.find(params[:id])
    render json: student
  end
end
