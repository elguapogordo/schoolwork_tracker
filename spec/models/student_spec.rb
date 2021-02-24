require 'rails_helper'

RSpec.describe Student, type: :model do
  student = described_class.new(
      name: 'Kevin'
    )

  it 'is valid with valid attributes' do
    expect(student).to be_valid
  end

  it 'is not valid without a name' do
    student.name = nil
    expect(student).to_not be_valid
  end
end
