require 'pry'

  # This is the array we will be passing into the remove_strawberry method
  # contacts = {
  #   "Jon Snow" => {
  #     name: "Jon",
  #     email: "jon_snow@thewall.we", 
  #     favorite_ice_cream_flavors: ["chocolate", "vanilla"]
  #   },
  #   "Freddy Mercury" => {
  #     name: "Freddy",
  #     email: "freddy@mercury.com",
  #     favorite_ice_cream_flavors: ["strawberry", "cookie dough", "mint chip"]
  #   }
  # }
  
def remove_strawberry(contacts)
  contacts.each do |famous_person, contact_details_hash|
    if famous_person == "Freddy Mercury"
      contact_details_hash.each do |key, value| 
        if key == :favorite_ice_cream_flavors
          value.delete_if {|icecream| icecream == "strawberry"}
        end
      end
    end
  end
end
