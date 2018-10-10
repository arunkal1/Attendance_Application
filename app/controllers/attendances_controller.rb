class AttendancesController < ApplicationController

  # before_action :set_student

  def index
  end

  def show
  end

  def new
    @group = Group.find 1

    # @group.students.each do |student|
      @attendance = @group.students[1].attendances.new
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

    @attendance.save
  end

  def update
  end

  def destroy
  end

  def attendance_params
    attendance_params = params.require(:attendance).permit(:att_status, :student_id)
  end
end
