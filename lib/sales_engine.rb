require 'csv'
require 'sequel'

#
# Creates a database in memory
#
DB = Sequel.sqlite
#
# Specifying a filepath after will create a database
# on the file-system.
#
# DB = Sequel.sqlite "sales_engine.db"

DB.create_table :customers do
  primary_key :id
  String :first_name
  String :last_name
  DateTime :created_at
  DateTime :updated_at
end

# TODO: Create the merchants table

# Merchant - columns: id,name,created_at,updated_at

DB.create_table :invoices do
  # id,customer_id,merchant_id,status,created_at,updated_at
  primary_key :id
  foreign_key :customer_id
  foreign_key :merchant_id
  String :status
  DateTime :created_at
  DateTime :updated_at
end


module SalesEngine

  def self.startup
    load_csv_data!
  end

  private

  def self.load_csv_data!
    load_data_for class: Customer, filename: 'data/customers.csv'
    load_data_for class: Invoice, filename: 'data/invoices.csv'

  end

  def self.load_data_for(params)
    klass = params[:class]
    filename = params[:filename]

    data = CSV.open filename, headers: true, header_converters: :symbol

    data.each do |row|
      object = klass.new

      row.headers.each do |header|
        object.send("#{header}=",row[header])
      end

      object.save
    end
  end

end

require 'sales_engine/customer'
require 'sales_engine/merchant'
require 'sales_engine/invoice'
