class ListsController < ApplicationController


  def index
    @lists = List.all
  end

  def new
  end

  def show
  end

  def create
  end
end
