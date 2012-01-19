class ErrorsController < ApplicationController
  respond_to :html, :xml, :json

  def index
    @errors = Error.all
    respond_with @errors
  end

  def show
    @error = Error.find(params[:id])
    respond_with @error
  end

  def create
    @error = Error.new(params[:error])
    @error.save
    respond_with @error
  end

  def destroy
  end
end
