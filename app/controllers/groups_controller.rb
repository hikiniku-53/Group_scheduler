class GroupsController < ApplicationController
  def new
     @group = Group.new
  end

  def create
    @group = Group.new(group_params)

    if @group.save
      @member_info = MemberInfo.new
      @member_info.group_id = @group.id
      @member_info.member_id = current_member.id
      @member_info.is_admin = true
      if @member_info.save
        redirect_to member_path(current_member.id)
      else
        render :new
      end
    else
      render :new
    end


  end

  def index
  end

  private

  def group_params
    params.require(:group).permit(:group_name)
  end
end
