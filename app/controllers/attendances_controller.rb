class AttendancesController < ApplicationController

  def index
    @groups=Group.all
  end


  def show
  end

  def new

    $id = params[:group]
    @group = Group.find $id
    $date = params[:date]


    @attendance = Attendance.new

  end

  def edit
  end

  def create

    @attendance = Attendance.new attendance_params

    puts "ATTENADANCE: #{@attendance.att_status}"
    puts "ID: #{@attendance.student_id}"

    respond_to do |format|
      if @attendance.save
        format.html{redirect_back fallback_location: root_path}
      else
        format.html{redirect_back fallback_location: root_path}
      end
    end
  end

  def update
  end

  def destroy
    @attendance = Attendance.find params[:id]
    @attendance.destroy
    redirect_back fallback_location: root_path
  end

  def attendance_params
    attendance_params = params.require(:attendance).permit(:att_status, :date, :comment, :student_id)
  end
  
  def group_params
    group_params = params.require(:group).permit(:name)
  end

end
