module Api 
    module V1
        class UniversitiesController < ApplicationController 
            def index
                universities = University.order('id ASC');
                render json: {status: 'SUCCESS', message:'Basariyla tum universiteler getirildi', data:universities},status: :ok
            end
            def show
                university = University.find(params[:id])
                render json: {status: 'SUCCESS', message:'Basariyla universiteye ait detaylar ve ogrenciler getirildi', data:university},status: :ok
            end
        end
    end
end