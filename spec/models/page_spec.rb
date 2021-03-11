require 'rails_helper'

RSpec.describe Page, type: :model do
  describe 'associations' do
    it { should belong_to(:subject)}
  end

  describe 'validations' do
    it { should validate_presence_of(:page) }
  end

  student = Student.create(
    name: 'Kevin'
  )

  subject = student.subjects.create(
    name: 'Math',
    description: '7th grade math book',
    student_id: student.id
  )

  page = described_class.new(
    page: 1,
    subject_id: subject.id
  )

  it 'is valid with valid attributes' do
    expect(page).to be_valid
  end
  
    it 'has default value of false for completed' do
      expect(page.completed).to eql(false)
    end

  it 'is not valid without a page number' do
    page.page = nil
    expect(page).to_not be_valid
  end
end