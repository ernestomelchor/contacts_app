class Api::ContactsController < ApplicationController
  def first_contact_action
    @contact = Contact.first[:first_name]
    render "first_contact.json.jb"
  end

  def all_contacts_by_first_name_action
    @contacts = Contact.all
    index = 0
    @all_contacts_by_first_name = []
    while index < @contacts.length
      @all_contacts_by_first_name << @contacts[index][:first_name]
      index += 1
    end
    render "all_contacts_by_first_name.json.jb"
  end

  def all_contacts_action
    @contacts = Contact.all
    render "all_contacts.json.jb"
  end
end
