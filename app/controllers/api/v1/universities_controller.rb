module Api 
    module V1
        class UniversitiesController < ApplicationController 
            def index
                universities = University.select(:id, :name);
                render json: {status: 'SUCCESS', message:'All universities succesfully listed', data:universities},status: :ok
            end
            
            def show   
                university = University.find(params[:id])
                render json: {status: 'SUCCESS', message:'University details successfully listed', data:university},status: :ok
            end
        end
    end
end