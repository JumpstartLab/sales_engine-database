# Sales Engine with a Databae

This workshop examines using Sequel to manage the data and the relationships
found within the Sales Engine application.

* [Sequel](http://sequel.rubyforge.org/)
* [Sequel ActiveRecord Reference](http://sequel.rubyforge.org/rdoc/files/doc/active_record_rdoc.html)

## Get the Repository

* Clone this [repository](https://github.com/gSchool/sales_engine-database)
* Install all the requirements in the Gemfile: `bundle install`

## Customer

* Write: *Customer.find\_by\_first\_name* and *Customer.find\_by\_last_name*
* Write: *Customer.find\_all\_by\_first\_name* and *Customer.find\_all\_by\_last\_name*


## Merchant

* Create the **merchants** table
* Define the *SalesEngine::Merchant* class
* Write the tests to validate: *#name*; *#created\_at*, *#updated\_at*
* Test and write: *Merchant.find\_by\_name*
* Test and write: *Merchant.find\_all\_by_name*
* Test and write: *Merchant#invoices*

## Invoices

* Write the specs to validate: *#status*; *#created\_at*; *#updated\_at*
* Test and write: *Invoice.customer*
* Test and write: *Invoice.merchant*