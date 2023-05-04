require "#{Rails.root}/lib/utilities/isbn_calculator.rb"
require "#{Rails.root}/lib/utilities/validation_result.rb"

class Api::V1::IsbnController < ApplicationController

    def show

        isbn = Isbn.new()
        isbn.input = params[:id]

        # check if the param's value is valid and return a message error and status code
        param = Isbn.valid?(isbn.input)
        unless param.valid
            return render json: { error: param.message }, status: param.status
        end

        # calculate the checksum
        checksum = IsbnCalculator.calculate_checksum(isbn.input)

        isbn.digit = checksum
        isbn.output = "#{isbn.input}#{isbn.digit}"

        return render json: isbn
    end
end