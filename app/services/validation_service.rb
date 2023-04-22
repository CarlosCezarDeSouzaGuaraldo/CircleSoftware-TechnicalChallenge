class ValidationService
    CHAR_COUNT = 12

    def self.is_numeric?(param)
        param =~ /\A\d+\z/
    end

    def self.valid_number?(number)
        return number.to_s =~ /^\d{12}$/
    end
end