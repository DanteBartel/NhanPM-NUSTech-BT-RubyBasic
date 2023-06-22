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
    # ----- Instance method for Q17
    def younger_40
        if @age >= 40
            begin
                raise "This is an exception. #{@name} is older than 40"
            rescue Exception => e
                puts e.message
            end            
        end
        p "#{@name} is #{@age} years old."        
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
20.times {|i| people.push(Person.new("Person " + (i+1).to_s, 10 + rand(81)))}
people.each { |person| person.introduce }

# Q8
p "==============Q8"
less_then_18 = people.select { |person| person.get_age < 18 }
less_then_18.each { |person| person.introduce }

# Q9
p "==============Q9"
over_18 = people.reject { |person| person.get_age < 18 }
over_18.each { |person| person.introduce }

# Q10
p "==============Q10"
increase_age = people.sort { |person1, person2| person1.get_age <=> person2.get_age }
increase_age.each { |person| person.introduce }

# Q11
p "==============Q11"
decrease_age = people.sort { |person1, person2| person2.get_age <=> person1.get_age }
decrease_age.each { |person| person.introduce }

# Q12
p "==============Q12"
# Here, I consider the position of the person needed to be deleted is idx, not the name of the person
del_idx = 2
deleted_people = people.clone
deleted_people.delete_at(del_idx)
p "deleted list"
deleted_people.each {|person| person.introduce}
p "original list"
people.each {|person| person.introduce}

# Q13
p "==============Q13"
oldest_person = people.max {|person1, person2| person1.get_age <=> person2.get_age}
youngest_person = people.min {|person1, person2| person1.get_age <=> person2.get_age}

p "The oldest person: "
oldest_person.introduce
p "The youngest person: "
youngest_person.introduce

# Q14
p "==============Q14"
# Using deep duplicate
next_year_people = []
people.each {|person| next_year_people.push(person.dup)}

for i in 0...next_year_people.size
    next_year_people[i].set_age(people[i].get_age + 1)
end

p "next year list"
next_year_people.each {|person| person.introduce}
p "original list"
people.each {|person| person.introduce}

# Q15
p "==============Q15"
age_list = []
people.each {|person| age_list.push(person.get_age)}
p age_list

# Q16
p "==============Q16"
people2 = []
20.times {|i| people2.push(Person.new("Person " + (i+21).to_s, 10 + rand(81)))}

people2.each {|person| people.push(person)}

people.each { |person| person.introduce }

# Q17
p "==============Q17"
# The function using for this question is defined in class Person
people.each {|person| person.younger_40}