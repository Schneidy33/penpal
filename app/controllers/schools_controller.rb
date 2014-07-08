class SchoolsController < ApplicationController

  def index
    @schools = School.all
  end

  def show
    @school = School.find_by(id: params[:id])
  end

  def new
  end

  def create
    @school = School.new
    @school.city = params[:city]
    @school.neighborhood = params[:neighborhood]
    @school.state = params[:state]
    @school.name = params[:name]
    @school.description = params[:description]

    if @school.save
      redirect_to "/schools/#{ @school.id }"
    else
      render 'new'
    end
  end

  def edit
    @school = School.find_by(id: params[:id])
  end

  def update
    @school = School.find_by(id: params[:id])
    @school.city = params[:city]
    @school.neighborhood = params[:neighborhood]
    @school.state = params[:state]
    @school.name = params[:name]
    @school.description = params[:description]

    if @school.save
      redirect_to "/schools/#{ @school.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @school = School.find_by(id: params[:id])
    @school.destroy


    redirect_to "/schools"
  end
end
