module Api 
    module V1
        class UniversitystudentsController < ApplicationController 
            def show   
                university = University.find(params[:id]).students
                render json: {status: 'SUCCESS', message:'University students successfully listed', data:university},status: :ok
            end
        end
    end
end