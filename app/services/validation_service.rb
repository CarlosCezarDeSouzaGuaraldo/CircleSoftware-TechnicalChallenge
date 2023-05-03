require "#{Rails.root}/lib/validation_result.rb"

class ValidationService

    # method to check if is a valid isbn
    def self.valid?(isbn)

        # check if isbn is nil
        return ValidationResult.new(false, "ISBN cannot be null.", :unprocessable_entity) if isbn.nil?

        # check if isbn contains only numbers
        return ValidationResult.new(false, "ISBN can only contain numbers.", :unprocessable_entity) if isbn !~ /\A\d+\z/
  
        # check if isbn has 12 digits
        return ValidationResult.new(false, "ISBN must have 12 digits.", :unprocessable_entity) if isbn.to_s !~ /^\d{12}$/

        # if it hasn't returned false in any of the above conditions, return true
        return ValidationResult.new(true, "ISBN is valid.", :ok)
    end
end