class InstructorsController < ApplicationController
    def index 
        render json: Instructor.all
    end

    def show 
        render json: Instructor.find(params[:id])
    end

    def create 
        instructor = Instructor.create!(name:params[:name])
        render json: instructor
    end

    def update 
        instructor = Instructor.find(params[:id])
        render json: instructor.update!(name:params[:name])
    end

    def destroy 
        instructor = Instructor.find(params[:id])
        instructor.destroy 
        head :no_content
    end
end
