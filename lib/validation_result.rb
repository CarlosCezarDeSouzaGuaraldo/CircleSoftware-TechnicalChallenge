class ValidationResult
    attr_reader :valid, :message, :status
  
    def initialize(valid, message, status)
        @valid = valid
        @message = message
        @status = status
    end
end