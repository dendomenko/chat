class ReviewsController < ApplicationController

  def new
    @workers = Worker.all
  end

  def index
    @reviews = Review.all
  end

  def create
    @review = Review.new(:name => params[:name],:description => params[:description],:worker_id => params[:worker_id])
    if @review.save
      redirect_to :action => 'index'
    else
      redirect_to :action => 'new'
    end
  end


end
