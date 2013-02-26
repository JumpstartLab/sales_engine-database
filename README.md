# Sales Engine with a Databae

This workshop examines using Sequel to manage the data and the relationships
found within the Sales Engine application.

## Get the Repository

* Clone this [repository](https://github.com/gSchool/sales_engine-database)
* Install all the requirements in the Gemfile: `bundle install`

## Customer

* Write: *Customer.find_by_first_name* and *Customer.find_by_last_name*
* Write: *Customer.find_all_by_first_name* and *Customer.find_all_by_last_name*


## Merchant

* Create the **merchants** table
* Define the *SalesEngine::Merchant* class
* Write the tests to validate: *#name*; *#created_at*, *#updated_at*
* Test and write: *Merchant.find_by_name*
* Test and write: *Merchant.find_all_by_name*
* Test and write: *Merchant#invoices*

## Invoices

* Write the specs to validate: *#status*; *#created_at*; *#updated_at*
* Test and write: *Invoice.customer*
* Test and write: *Invoice.merchant*