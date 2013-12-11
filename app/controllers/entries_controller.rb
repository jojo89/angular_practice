class EntriesController < ApplicationController
  respond_to :json
  skip_before_filter  :verify_authenticity_token
  def index
    respond_with Entry.all
  end

  def show

    respond_with Entry.find(params[:id])
  end

  def create
    respond_with Entry.create(name: params[:entry][:name])
  end

  def update
    respond_with Entry.update(params[:id], params[:entry])
  end

  def destroy
    respond_with Entry.destroy(params[:id])
  end


end



