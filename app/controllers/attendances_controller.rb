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
  end

  def edit
  end

  def create
    @attendance = Attendance.new attendance_params
    @attendance.save
  end

  def update
  end

  def destroy
  end

  def attendance_params
    params.require(:attendance).permit(:att_status, :student_id)
  end
end
