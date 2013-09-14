require 'test_helper'

class EmployeeTest < ActiveSupport::TestCase
  it 'should be valid' do
    employee = build(:employee)
    employee.must_be :valid?
  end
end
