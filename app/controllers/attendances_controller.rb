class AttendancesController < ApplicationController

  # before_action :set_student

  def index
    @groups=Group.all
  end

  def show
  end

  def new
    # @group = Group.find 1
    @group = Group.find $id
    
    puts @group.name

    # @group.students.each do |student|
      # @attendance = @group.students[1].attendances.new
      @attendance = Attendance.new
    # end

    # @group.students.each do |student|
    #   puts "STUDENT: #{student.name}"
    #   @attendance = student.attendances.new
    #   puts "STUDENT ATTENDANCES: #{student.attendances}"
    # end

  end

  def edit
  end

  def create

    @attendance = Attendance.new attendance_params

    puts "ATTENADANCE: #{@attendance.att_status}"
    puts "ID: #{@attendance.student_id}"

    @attendance.save
    redirect_to new_attendance_path
  end

  def update
  end

  def destroy
  end

  def attendance_params
    attendance_params = params.require(:attendance).permit(:att_status, :date, :student_id)
  end
  def group_params
    group_params = params.require(:group).permit(:name)
  end

end
