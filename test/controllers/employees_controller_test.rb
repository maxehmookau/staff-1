require 'test_helper'

class EmployeesControllerTest < ActionController::TestCase
  
  setup do
    @employee = create(:employee)
  end
  
  def employee_attributes
    { email: @employee.email, 
      first_name: @employee.first_name, 
      last_name: @employee.last_name, 
      phone: @employee.phone, 
      website: @employee.website }
  end

  it "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employees)
  end

  it "should get new" do
    get :new
    assert_response :success
  end

  it "should create employee" do
    assert_difference('Employee.count') do
      post :create, employee: employee_attributes
    end

    assert_redirected_to employee_path(assigns(:employee))
  end

  it "should show employee" do
    get :show, id: @employee
    assert_response :success
  end

  it "should get edit" do
    get :edit, id: @employee
    assert_response :success
  end

  it "should update employee" do
    patch :update, id: @employee, employee: employee_attributes
    assert_redirected_to employee_path(assigns(:employee))
  end

  it "should destroy employee" do
    assert_difference('Employee.count', -1) do
      delete :destroy, id: @employee
    end

    assert_redirected_to employees_path
  end
end
