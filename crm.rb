require_relative 'contact.rb'

class CRM

 @@contacts = []


  def initialize(name)
@name = name
  end

  def main_menu
    while true # repeat indefinitely
      print_main_menu
      user_selected = gets.to_i
      call_option(user_selected)
    end
  end

  def print_main_menu
    puts '[1] Add a new contact'
    puts '[2] Modify an existing contact'
    puts '[3] Delete a contact'
    puts '[4] Display all the contacts'
    puts '[5] Search by attribute'
    puts '[6] Exit'
    puts 'Enter a number: '
  end
  end

  def call_option(user_selected)
    case user_selected
    when 1 then add_new_contact
    when 2 then modify_existing_contact
    when 3 then delete_contact
    when 4 then display_all_contacts
    when 5 then search_by_attribute
    when 6 then exit

    # To be clear, the methods add_new_contact and modify_existing_contact
    # haven't been implemented yet
    end
  end

  def add_new_contact
    print 'Enter First Name: '
    first_name = gets.chomp

    print 'Enter Last Name: '
    last_name = gets.chomp

    print 'Enter Email Address: '
    email = gets.chomp

    print 'Enter a Note: '
    note = gets.chomp

    Contact.create(first_name, last_name, email, note)
  end

  def modify_existing_contact
    p "Please enter first_name of contact you would like to edit"
    name = gets.chomp
    contact_being_edited = Contact.find_by(first_name: name)

  end
end

  def delete_contact
    p "Please enter first_name of contact you would like to delete"
    contact_to_delete = gets.chomp
    contact_to_delete = Contact.find_by(first_name: contact_to_delete)
    contact.to_delete.delete
 p "You have succesfully deleted contact"
  end

  def display_all_contacts
  p @@contacts

  end

  def search_by_attribute
    p "Do you want to search first_name, last_name or email"
    attribute = gets.chomp

    p "Please enter your personal info here "
    value = gets.chomp

    contact = Contact.find_by(attribute, value)
    return contact
  end

end
#example given in Alexa
a_crm_app = CRM.new
a_crm_app.print_main_menu

puts Contact.create("Kathleen", "McClay", "kathleenmcclay@gmail.com")
puts Contact.create("Bob", "Smith", "bobsmith@gmail.com")
