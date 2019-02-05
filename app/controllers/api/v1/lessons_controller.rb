class Api::V1::LessonsController < ApplicationController
    def index 
        @lessons = Lesson.all
        render json: @lessons
    end

    def show
        @lesson = Lesson.find(params[:id])
        render json: @lesson, status: :ok
    end

    def update
        @lesson = Lesson.find(params[:id])
        @lesson.update(lesson_params)

        render json: @lesson, status: :ok
    end

    private 
    
    def lesson_params
        params.require(:lesson).permit(:description, :objective, :unit_id, :content, :video, :completed)
    end
end
