class Api::V1::IsbnController < ApplicationController
    
    def index
    end

    def show

        @isbn = params[:id]

        if !ValidationService.is_numeric?(@isbn)
            return render json: "The '#{@isbn}' parameter isn't a number."
        end

        if !ValidationService.valid_number?(@isbn)
            return render json: "The '#{@isbn}' parameter must have #{ValidationService::CHAR_COUNT} characters."
        end

        render json: @isbn
    end
end