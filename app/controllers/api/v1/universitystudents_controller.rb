module Api 
    module V1
        class UniversitystudentsController < ApplicationController 
            def show   
                university = University.find(params[:id]).students
                render json: {status: 'SUCCESS', message:'Basariyla universiteye ait ogrenciler getirildi', data:university},status: :ok
            end
        end
    end
end