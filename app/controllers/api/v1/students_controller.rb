module Api 
    module V1
        class StudentsController < ApplicationController 
            def index
                students = Student.order('id ASC');
                render json: {status: 'SUCCESS', message:'Basariyla tum ogrenciler getirildi', data:students},status: :ok
            end

            def show
                student = Student.find(params[:id])
                render json: {status: 'SUCCESS', message:'Basariyla ogrenciye ait detay ve universite bilgileri getirildi', data:student},status: :ok
            end

            def create
                student = Student.new(student_params)

                if student.save
                     render json: {status: 'SUCCESS', message:'Basariyla ogrenciye eklendi', data:student},status: :ok
                else
                    render json: {status: 'ERROR', message:'Ogrenci eklenirken hata olustu', data:student.errors},status: :unprocassable_entity

                    
                end
            end

            private

            def student_params
                params.permit(:name,:university_id,:started_at)
            end
        end
    end
end