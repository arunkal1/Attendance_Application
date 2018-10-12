class GroupsController < ApplicationController

  def index

    #Selects groups fromt the database ordered by ID
    @groups = Group.sort_by_id

    #Selects groups fromt the database ordered by Name
    @groups1 = Group.sort_by_name

    #Selects groups fromt the database ordered by the group's active status
    @groups2 = Group.sort_by_active

  end

  def show
    @group = Group.find params[:id]
  end

  def new
    @group = Group.new
  end

  def edit
    @group = Group.find params[:id]
  end

  def create
    @group = Group.new group_params

    #Capitalises group name before saving allow sorting to work
    @group.capitalize_name

    respond_to do |format|

      #If the group can be saved you will be directed to the groups
      #and a message will appear saying it was updated
      if @group.save
        format.html{redirect_to @group, notice: "#{@group.name} was created"}
      #If the group can't be saved it will reload the new page.
      else
        format.html{render :new}
      end

    end

  end

  def update
    @group = Group.find params[:id]

    @group.capitalize_name

    respond_to do |format|
      if @group.update group_params
        format.html{redirect_to @group, notice: "#{@group.name} was updated"}
      else
        format.html{render :new}
      end
    end

  end

  def destroy
    @group = Group.find params[:id]
    @group.destroy
    redirect_to root_path
  end

  def group_params
    group_params = params.require(:group).permit(:name,:stream,:startdate,:enddate,:active)
  end


end
