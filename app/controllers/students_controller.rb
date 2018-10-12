class StudentsController < ApplicationController

  #Select all of the students from the student section of the seed.rb
  # Select all groups from the group section within the seed.rb
  def index
    @students  = Student.all
    @group = Group.all
  end

  def show
    # Find the student by ID
    @student = Student.find params[:id]
    # Find the group a student belongs to via the group_id
    @group = Group.find (@student.group_id)
  end

  def new
    # Set selected group to new student
    @student = Student.new
    @course_list = Student.course_list_assign
  end

  def edit
    # Find student by ID and edit accordingly
    @student = Student.find params[:id]
    @course_list = Student.course_list_assign
  end

  def create
    # Create a new student, redirect to student index page and notify that student has been created
    @student = Student.new student_params
    @course_list = Student.course_list_assign
      respond_to do |format|
        if @student.save
          format.html{redirect_to @student, notice: "#{@student.name} was created"}
        else
          format.html{render :new}
        end
    end
  end

  def update
    # Update a new student, redirect to student index page and notify that student has been Updated
    @student = Student.find params[:id]
    @course_list = Student.course_list_assign
    respond_to do |format|
      if @student.update student_params
        format.html{redirect_to @student, notice: "'#{@student.name}' was updated"}
      else
        format.html{render :edit}
      end
    end
  end

  def destroy
    # Find student by ID, remove details when delete is selected and redirect to the student index page
    @student = Student.find params[:id]
    @student.destroy
    redirect_to students_path
  end

  def student_params
    student_params = params.require(:student).permit(:name, :active, :group_id)
  end
end
