require 'rails_helper'

RSpec.describe Isbn do

    describe '#generate_output' do
        it 'concatenates the input and digit values' do
            isbn = Isbn.new
            isbn.generate_output('123456789012', '3')
            expect(isbn.output).to eq('1234567890123')
        end
    end

    describe '#generate_output' do
        it 'concatenates the input and digit values' do
            isbn = Isbn.new
            isbn.generate_output('123456789012', '3')
            expect(isbn.output).to eq('1234567890123')
        end
    end
end