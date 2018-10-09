class StudentsController < ApplicationController
  def index
    @students  = Student.all
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
<<<<<<< HEAD
    @student = Student.new
      respond_to do |format|
        if @student.save
          format.html{redirect_to @student, notice: "#{@student.name} was created"}
        else
          format.html{render :new}
        end
=======
    @student = Student.new student_params
    respond_to do |format|
      if @student.save
        format.html{redirect_to @student, notice: "'#{@student.name}' was created"}
      else
        format.html{render :new}
      end
>>>>>>> a0d6aa48058801f9c744bb26cfc463f3ea9a96c3
    end
  end

  def update
    @student = Student.find params[:id]
  end

  def destroy
    @student = Student.find params[:id]
  end

  def student_params
    student_params = params.require(:student).permit(:name, :group_id)
  end
end
