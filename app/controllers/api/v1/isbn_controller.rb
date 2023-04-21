class Api::V1::IsbnController < ApplicationController
    
    def index
    end

    def show
        @isbn = params[:id]
        render json: @isbn
    end 
end