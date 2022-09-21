class RelationshipsController < ApplicationController
  def show
  end

  def new
    @relationship = Relationship.new
  end

  def create
    @relationship = Relationship.new(leader_id: params[:leader_id], follower_id: current_user.id)

    respond_to do |format|
      if @relationship.save
        format.html { redirect_to relationship_url(@relationship), notice: "You followed this user." }
        format.json { render :show, status: :created, location: @relationship }
      end
    end
  end

  def destroy
  end
end
