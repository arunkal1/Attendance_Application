class AttendancesController < ApplicationController

  # before_action :set_student

  def index
  end

  def show
  end

  def new
    @group = Group.find 1

  end

  def edit
  end

  def create
    @attendance = Attendance.create attendance_params
    @attendance.save
  end

  def update
  end

  def destroy
  end
end
