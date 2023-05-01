require 'active_model'

class Api::V1::IsbnController < ApplicationController
    
    def index
    end

    def show

        isbn = Isbn.new(id: params[:id])

        # check if the 'id' parameter exists
        unless isbn.valid?
            return render json: isbn.errors.full_messages.first
        end

        # check if the 'id' parameter is numeric
        unless isbn.numericality?
            return render json: isbn.errors.full_messages.first
        end

        # check if the 'id' parameter is a valid number
        unless isbn.length?
            return render json: isbn.errors.full_messages.first
        end

        render json: @isbn
    end
end