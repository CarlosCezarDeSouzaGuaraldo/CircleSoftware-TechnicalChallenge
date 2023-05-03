module IsbnCalculator
    def self.calculate_checksum(isbn)
  
        # Inital checksum's sum value
        checksum = 0

        # Loop for each character
        isbn.chars.each_with_index do |digit, index|
            # Calculo para alterar os valores multiplicadores
            weight = (index % 2 == 0) ? 1 : 3

            # Acrescenta o valor do caractere multiplicado pelo multiplicador 
            checksum += digit.to_i * weight
        end
  
        # Calcule o dígito de checksum, que é a diferença entre o checksum e o próximo múltiplo de 10.
        checksum_digit = 10 - (checksum % 10)
        checksum_digit = 0 if checksum_digit == 10
  
      return checksum_digit
    end
end