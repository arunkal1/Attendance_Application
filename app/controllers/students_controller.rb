class StudentsController < ApplicationController
  def index
    @students  = Student.all
    @group = Group.all
  end

  def show
    @student = Student.find params[:id]
    @group = Group.find (@student.group_id)
  end

  def new
    @student = Student.new
  end

  def edit
    @student = Student.find params[:id]
  end

  def create
    @student = Student.new student_params
      respond_to do |format|
        if @student.save
          format.html{redirect_to @student, notice: "#{@student.name} was created"}
        else
          format.html{render :new}
        end
    end
  end

  def update
    @student = Student.find params[:id]
    respond_to do |format|
      if @student.update student_params
        format.html{redirect_to @student, notice: "'#{@student.name}' was updated"}
      else
        format.html{render :edit}
      end
    end
  end

  def destroy
    @student = Student.find params[:id]
    @student.destroy
    redirect_to students_path
  end

  def student_params
    student_params = params.require(:student).permit(:name, :active, :group_id)
  end
end
