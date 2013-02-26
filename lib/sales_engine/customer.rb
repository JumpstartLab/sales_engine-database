
module SalesEngine

  #
  # Define a class that is a subclass of Sequel::Model so that
  # it gains a number of special methods that come from being
  # tied to a database.
  #
  class Customer < Sequel::Model
    one_to_many :invoices
    
    def self.find_by_id(id)
      find(id: id)
    end

  end

end