class VotesController < ApplicationController
  def index
    @hacks = Hack.all
    @vote = Vote.new
  end
  
  def create
    @vote = Vote.new(params[:vote])
    if @vote.save
      redirect_to root_path
    else
      redirect_to root_path
    end
  end
end