class Api::ContactsController < ApplicationController
  def index
    @contacts = Contact.all
    # @contacts = Contact.order(:id) # Run this line of code if you ever want to sort by id/any other existing instance method
    render "index.json.jb"
  end

  def create
    @contact = Contact.new({
      first_name: params["first_name"],
      last_name: params["last_name"],
      email: params["email"],
      phone_number: params["phone_number"],
      bio: params["bio"],
      middle_name: params["middle_name"],
    })
    if @contact.save
      render "show.json.jb"
    else
      render json: { errors: @contact.errors.full_messages }, status: 422
    end
  end

  def show
    @contact = Contact.find_by(id: params["id"])
    render "show.json.jb"
  end

  def update
    @contact = Contact.find_by(id: params["id"])
    @contact.first_name = params["first_name"] || @contact.first_name
    @contact.last_name = params["last_name"] || @contact.last_name
    @contact.email = params["email"] || @contact.email
    @contact.phone_number = params["phone_number"] || @contact.phone_number
    @contact.bio = params["bio"] || @contact.bio
    @contact.middle_name = params["middle_name"] || @contact.middle_name
    if @contact.save
      render "show.json.jb"
    else
      render json: { errors: @contact.errors.full_messages }, status: 422
    end
  end

  def destroy
    @contact = Contact.find_by(id: params["id"])
    @contact.destroy
    render "destroy.json.jb"
  end
end
