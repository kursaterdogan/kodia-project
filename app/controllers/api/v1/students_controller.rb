module Api 
    module V1
        class StudentsController < ApplicationController 
            def index
                students = Student.select(:id, :name, :university_id);
                render json: {status: 'SUCCESS', message:'All universities succesfully listed', data:students},status: :ok
            end

            def show
                student = Student.find(params[:id])
                render json: {status: 'SUCCESS', message:'Student details succesfully listed', data:student},status: :ok
            end

            def create
                student = Student.new(student_params)

                if student.save
                     render json: {status: 'SUCCESS', message:"Name with #{student.name} added to #{student.university.name}", data:student},status: :ok
                else
                    render json: {status: 'ERROR', message:'While adding student error occurred', data:student.errors},status: :unprocassable_entity
                end
            end

            private

            def student_params
                params.permit(:name,:university_id,:started_at)
            end
        end
    end
end