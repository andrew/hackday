class VotesController < ApplicationController
  before_filter :login
  
  def index
    if Vote.where(:email => session[:email]).any?
      flash[:notice] = "You've already voted"
      redirect_to results_path
    else
      @hacks = Hack.all
      @vote = Vote.new
    end
  end
  
  def create
    if Vote.where(:email => session[:email]).any?
      flash[:notice] = "You've already voted"
      redirect_to results_path
      return false
    end
    
    @vote = Vote.new(params[:vote])
    @vote.email = session[:email]
    if @vote.save
      redirect_to results_path
    else
      redirect_to root_path
    end
  end
  
  def results
    @hacks = Hack.all
  end
  
  protected
  
  def login
    unless session[:email].present?
      redirect_to '/auth/google_apps'
      return false
    end
  end
end