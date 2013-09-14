class Api::EmployeesController < ApplicationController
  
  before_action :set_employee, only: [:show, :update, :destroy]
  
  respond_to :json

  def index
    @employees = Employee.all
    respond_with @employees
  end

  def show
    respond_with @employee
  end

  def create
    @employee = Employee.new(employee_params)

    if @employee.save
      render json: @employee, status: :created
    else
      render json: @employee.errors, status: :unprocessable_entity
    end
  end

  def update
    if @employee.update(employee_params)
      head :no_content, status: :ok
    else
      render json: @employee.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @employee.destroy
    head :no_content
  end

  private

    def set_employee
      @employee = Employee.find(params[:id])
    end

    def employee_params
      params.require(:employee).permit(:first_name, :last_name, :email, :phone, :website)
    end
end
