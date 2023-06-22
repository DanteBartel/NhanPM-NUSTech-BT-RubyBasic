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

# -------------------- Check Q1, Q2, Q3, Q4
p1 = Person.new("An", 21)
p p1.get_name
p p1.get_age
p1.set_name("Ann")
p1.set_age(22)
p p1.get_name
p p1.get_age

p1.introduce

p2 = Person.new("Bao", 23)
Person.total_count