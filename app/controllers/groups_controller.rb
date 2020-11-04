class GroupsController < ApplicationController
  
  def new
    @group = Group.new
  end
  
  def index
    @groups = Group.all
    @groups = Group.order("created_at DESC")
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

    def group_params
      params.require(:group).permit(:name, :text, :category_id, :genre_id, :image)
    end

end