class PeopleController < ApplicationController
  def index
    render json: Person.all
  end
  def create
    person = Person.create(person_params)
    render json: person
  end


  def update
    person = Person.find(params[:id])
    person.update_attributes(person_params)
  end

  def destroy
    Person.destroy(params[:id])
  end
  private
  def person_params
    params.require(:person).permit(:salutation, :firstName, :middleName, :lastName, :SSN, :birthDate, :comment)
  end

end
