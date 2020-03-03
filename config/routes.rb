Rails.application.routes.draw do
  namespace :api do
    get "/first_contact" => "contacts#first_contact_action"
    get "/all_contacts_by_first_name" => "contacts#all_contacts_by_first_name_action"
    get "/all_contacts" => "contacts#all_contacts_action"
  end
end
