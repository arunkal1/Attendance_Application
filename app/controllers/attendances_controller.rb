class AttendancesController < ApplicationController

  def index
    @groups=Group.all
  end


  def show
  end

  def new
    # @group = Group.find 1
    $id = params[:group]
    @group = Group.find $id
    $date = params[:date]
    puts "date: #{$date}"


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
  end

  def attendance_params
    attendance_params = params.require(:attendance).permit(:att_status, :date, :student_id)
  end
  def group_params
    group_params = params.require(:group).permit(:name)
  end

end
