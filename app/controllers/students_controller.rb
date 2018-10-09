class StudentsController < ApplicationController
  def index
    @students  = Student.all
  end

  def show
    # @student = Student.find params[:id]
  end

  def new
    @student = Student.new
  end

  def edit
    @student = Student.find params[:id]
  end

  def create
    @student = Student.new
  end

  def update
    @student = Student.find params[:id]
  end

  def destroy
    @student = Student.find params[:id]
  end
end
