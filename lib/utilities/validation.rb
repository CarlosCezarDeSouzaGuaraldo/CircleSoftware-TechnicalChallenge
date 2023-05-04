# this class represents the result of a validation operation
class Validation

    attr_reader :valid, :message, :status

    # status codes used in the validation result
    VALID = true
    INVALID = false
    OK = :ok
    UNPROCESSABLE_ENTITY = :unprocessable_entity
  
    # creates a new validation result object
    # @param status [Integer] the HTTP status code of the validation result
    # @param message [String] a message describing the validation result
    # @param code [Integer] a code indicating the result of the validation
    def initialize(valid, message, status)
        @valid = valid
        @message = message
        @status = status
    end
end