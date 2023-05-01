class Isbn
    include ActiveModel::Model
    attr_accessor :id

    validates :id, presence: { message: "The 'id' parameter is required." }
    validates :id, numericality: { message: "Invalid value for 'id'. The parameter must be a number." }
    validates :id, length: { is: 12, message: "Invalid value for 'id'. The parameter must have exactly 12 characters." }

end