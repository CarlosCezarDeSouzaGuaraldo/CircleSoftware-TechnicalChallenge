require_relative "../../lib/utilities/validation.rb"

# this class provides a method to validate ISBN numbers
class Isbn

    # these attributes are used to store the input ISBN, output result, and calculated check digit
    attr_accessor :input, :output, :digit

    # validates the provided ISBN number
    # @param isbn [String] the ISBN number to validate
    # @return [Validation] a validation result object
    def self.is_valid_isbn?(isbn)
        return Validation.new(Validation::INVALID, "ISBN cannot be null.", Validation::UNPROCESSABLE_ENTITY) if isbn.nil?
        return Validation.new(Validation::INVALID, "ISBN cannot be empty.", Validation::UNPROCESSABLE_ENTITY) if isbn.to_s.strip.empty?
        return Validation.new(Validation::INVALID, "ISBN can only contain numbers.", Validation::UNPROCESSABLE_ENTITY) if isbn !~ /\A\d+\z/
        return Validation.new(Validation::INVALID, "ISBN must have 12 digits.", Validation::UNPROCESSABLE_ENTITY) if isbn.to_s !~ /^\d{12}$/

        return Validation.new(Validation::VALID, "ISBN is valid.", Validation::OK)
    end

    # generates the output string by concatenating the input and digit values.
    # @param input [String] the input value to include in the output
    # @param digit [String] the digit value to include in the output
    # @return [void]
    def generate_output(input, digit)
        @output = "#{input}#{digit}"
    end
end