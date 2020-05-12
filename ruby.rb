#What is the difference between print and puts ?
The puts (short for “put string”) and print commands are both used to display the results of evaluating Ruby code. The primary difference between them is that puts adds a newline after executing, and print does not.

#What is the difference between Integer() and to_i ?
The to_i method tries to convert the given input to integer as much as possible whereas the Integer method throws an ArgumentError if it can't covert the input to integer

#Write a difference between lambdas and procs ?
There's a major difference in how Procs and Lambdas handle return statements. Lambdas handle return the way your used to — you exit out of the closure. Procs, on the other hand return from the method enclosing the Proc!

#What is the dirrence between a variable name prefixed with and without @ ?
  $meat = "sausages"
 
class Barbecue
 
  def initialize
    @@meat = nil
    @meat = nil
  end
 
  def what_to_cook
    @meat || @@meat || $meat
  end
 
  def set_class_variable=(meat)
    @@meat = meat
  end
 
  def set_instance_variable=(meat)
    @meat = meat
  end
end
 
$meat
#=> "sausages"
 
barbecue1 = Barbecue.new
barbecue2 = Barbecue.new
barbecue3 = Barbecue.new
 
barbecue3.what_to_cook
#=> "sausages"
barbecue1.set_instance_variable = "steak"
barbecue1.what_to_cook
#=> "steak"
barbecue2.what_to_cook
#=> "sausages"
barbecue3.set_class_variable = 'ribs'
barbecue1.what_to_cook
#=> "steak"
barbecue2.what_to_cook
#=> "ribs"
barbecue3.what_to_cook
#=> "ribs"

