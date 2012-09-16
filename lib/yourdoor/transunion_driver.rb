require File.expand_path('../transunion_exceptions', __FILE__)
require File.expand_path('../transunion', __FILE__)

t = YourDoor::TransUnion
first_name = "BARRON"
middle_name=""
last_name = "CLYDE"
street_number = "3007"
street_name = "PSC"
city = "FPO"
state = "AA"
zip = "34051"
ssn = "666840978"
puts t.build_request(first_name, middle_name, last_name, street_number, street_name, city, state, zip, ssn)
