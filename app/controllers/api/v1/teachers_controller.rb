class Api::V1::TeachersController < ApplicationController

    def index 
        @teachers = Teacher.all
        render json: @teachers
    end
end
