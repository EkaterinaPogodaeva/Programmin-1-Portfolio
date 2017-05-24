#Katya Pogodaeva
print "Please enter your birthday"
ag_y = input("Year: ")
ag_m = input("Month (1-12): ")
ag_d = input("Date: ")

from datetime import date
now = date.today()


birth = date(int(ag_y), int(ag_m), int(ag_d))

your_age =  now-birth

print "Your age is %s" % your_age