class RelationshipsController < ApplicationController
  def show
    @relationship = Relationship.find_by(id: params[:id])
  end

  def new
    @relationship = Relationship.new
  end

  def create
    @relationship = Relationship.new(leader_id: params[:leader_id], follower_id: current_user.id)
    respond_to do |format|
      if @relationship.save
        format.html { redirect_to relationship_url(@relationship), notice: "User followed." }
        format.json { render :show, status: :created, location: @relationship }
      end
    end
  end

  def destroy
    @relationship = Relationship.find_by(leader_id: params[:leader_id], follower_id: current_user.id)
    @relationship&.destroy
    respond_to do |format|
      format.html { redirect_to user_path(:id), notice: "User was successfully unfollowed." }
      format.json { head :no_content }
    end
  end
end
