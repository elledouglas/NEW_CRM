require_relative 'contact.rb'

class CRM

 @@contacts = []


  def initialize(name)
@name = name
  end

  def main_menu

  end

    def print_main_menu
  "[1] Add a new contact"
  "[2] Modify an existing contact"
  "[3] Delete a contact"
  "[4] Display all the contacts"
  "[5] Search by attribute"
  "[6] Exit"
  "Enter a number"
  end

  end

  def call_option

  end

  def add_new_contact
    new_contact = Contact.new(first_name, last_name, email, note)
    @@contacts << new_contact
    return new_contact


  end

  def modify_existing_contact

  end

  def delete_contact

  end

  def display_all_contacts

  end

  def search_by_attribute

  end


end
