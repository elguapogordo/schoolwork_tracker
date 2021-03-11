require 'rails_helper'

RSpec.describe Subject, type: :model do
  describe 'associations' do
    it { should belong_to(:student) }
  end
  
  describe 'validations' do
    it { should validate_presence_of(:name) }
  end

  student = Student.create(
    name: 'Kevin'
  )

  subject = described_class.new(
    name: 'Math',
    description: '7th grade math book',
    student_id: student.id
  )

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a student' do
    subject.student_id = nil
    expect(subject).to_not be_valid
  end
end
