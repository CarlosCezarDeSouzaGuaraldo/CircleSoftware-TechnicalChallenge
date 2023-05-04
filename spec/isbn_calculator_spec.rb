require 'spec_helper'
require_relative '../lib/utilities/isbn_calculator'

RSpec.describe IsbnCalculator do
    describe '.calculate_checksum' do
        context 'with a valid ISBN without checksum' do
            it 'returns the correct checksum digit' do
                expect(IsbnCalculator.calculate_checksum('978014300723')).to eq(4)
            end
        end
    end
end