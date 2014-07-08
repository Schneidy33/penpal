class PeopleController < ApplicationController

  def index
    @people = Person.all
  end

  def show
    @person = Person.find_by(id: params[:id])
  end

  def new
  end

  def create
    @person = Person.new
    @person.name = params[:name]
    @person.occupation = params[:occupation]
    @person.email = params[:email]
    @person.phone = params[:phone]
    @person.gradelevel = params[:gradelevel]
    @person.image = params[:image]
    @person.school_id = params[:school_id]

    if @person.save
      redirect_to "/people/#{ @person.id }"
    else
      render 'new'
    end
  end

  def edit
    @person = Person.find_by(id: params[:id])
  end

  def update
    @person = Person.find_by(id: params[:id])
    @person.name = params[:name]
    @person.occupation = params[:occupation]
    @person.email = params[:email]
    @person.phone = params[:phone]
    @person.gradelevel = params[:gradelevel]
    @person.image = params[:image]
    @person.school_id = params[:school_id]

    if @person.save
      redirect_to "/people/#{ @person.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @person = Person.find_by(id: params[:id])
    @person.destroy


    redirect_to "/people"
  end
  def teachers
    @people = Person.where(occupation: 'Teacher')
  end
  def students
    @people = Person.where(occupation: 'Student')
  end
end
