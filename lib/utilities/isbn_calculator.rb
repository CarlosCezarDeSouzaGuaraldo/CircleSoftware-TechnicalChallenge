module IsbnCalculator
    def self.calculate_checksum(isbn)
  
        # inital checksum's sum value
        checksum = 0

        # loop for each character
        isbn.chars.each_with_index do |digit, index|
            # calculation to alternate multiplier values
            weight = (index % 2 == 0) ? 1 : 3

            # add the character value multiplied by the weight
            checksum += digit.to_i * weight
        end
  
        # calculate the checksum digit, which is the difference between the checksum and the next multiple of 10
        checksum_digit = 10 - (checksum % 10)
        checksum_digit = 0 if checksum_digit == 10
  
        return checksum_digit
    end
end