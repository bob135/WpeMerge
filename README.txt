How to run:

Open a linux terminal or gitbash.
Be sure to have Ruby, the gem 'rest-client', and the gem 'addressable' installed.
cd to the directory containing wpe_merge.rb.
run Ruby wpe_merge resources/input.csv resources/out.csv.
Documentation created using rdoc.


What it does:

This will read in a provided csv file.  For each Account ID in said file, a
Restful API call is made to WP's provided API.  It will pull data for the
specified account.  As each element of Account data is pulled, a new csv file
will have the fields listed below added to it.


Expected input.csv format:
Account ID, Account Name, First Name, Created On


WP's provided API format for get account_id:
account_id, status, created_on


Expected output.csv format:
Account ID, First Name, Created On, Status, Status Set On


Unit Testing:
All tests are located in the UnitTest folder.
