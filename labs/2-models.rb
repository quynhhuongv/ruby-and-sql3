# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Salesperson.destroy_all
# **************************

# Lab 2: Models
# - We've added data into the companies table.  Next, we'll add data
#   into the salespeople table.  Follow the steps below to insert and
#   read rows of salesperson data.  Update a row.  Afterwards, display
#   how many rows have been inserted into the salespeople table.
#   Lastly, if you want a challenge, try writing code to display the
#   full name of each salesperson.

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert 1-2 rows in salespeople table.

new_salesperson = Salesperson.new 
new_salesperson ["first name"] = "Ben"
new_salesperson ["last name"] = "Block"
new_salesperson ["email"] = "ben.block@kellogg.northwestern.edu"
new_salesperson.save
puts "Ben Block created!"

new_salesperson_2 = Salesperson.new 
new_salesperson_2 ["first name"] = "Brian"
new_salesperson_2 ["last name"] = "Eng"
new_salesperson_2 ["email"] = "brian.eng@kellogg.northwestern.edu"
new_salesperson_2.save
puts "Brian Eng created!"
puts "There are #{Salesperson.all.count} salespeople in the companies table."
puts Salesperson.all.inspect 

# 3. write code to display how many salespeople rows are in the database

# ---------------------------------
# Salespeople: 2

# 4. modify/update column data for a row in the salespeople table.
# Change brian.eng@kellogg.northwestern.edu = beng@kellog.northwestern.edu
ben = Salesperson.find_by ({"email"=> "ben@test.com"})
ben["name"]="Benjamin"
ben.save

# CHALLENGE:
# 5. write code to display each salesperson's full name
salespeople = Salesperson.all
#puts salespeople.inspect
for salesperson in salespeople
    first_name = salesperson ["first_name"]
    last_name = salesperson ["last_name"]
    puts 
# ---------------------------------
# Salespeople: 2
# Ben Block
# Brian Eng
