class Api::V1::StudentsController < ApplicationController

    def index 
        @students = Student.all
        render json: @students
    end


    def show 
        @student = Student.find(params[:id])
        render json: @student, status: :ok
    end

end
