class Person
    @@count = 0
    def initialize(name, age)
        @name = name
        @age = age
        @@count += 1
    end
    # ----- get set methods
    def set_name(name)
        @name = name
    end
    def set_age(age)
        @age = age
    end
    def get_name
        @name
    end
    def get_age
        @age
    end
    # ----- other methods
    def Person.total_count
        p "Total number of people is #{@@count}."
    end
    def introduce
        p "My name is #{@name}. I'm #{@age} years old."
    end
end


# Main
# --------------------
p1 = Person.new("An", 21)
p p1.get_name
p p1.get_age
p1.set_name("Ann")
p1.set_age(22)
p p1.get_name
p p1.get_age

# Q5
p "==============Q5"
p1.introduce

# Q6
p "==============Q6"
p2 = Person.new("Bao", 23)
Person.total_count

# Q7
p "==============Q7"
people = []
20.times { |i| people << Person.new("Person " + (i+1).to_s, 10 + rand(81))}
people.each do |person|
    person.introduce
end


# Q8
# less_than_18 = people.each { |person| p}