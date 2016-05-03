class Person
    def initialize(a, b)
        @person_name = a
        @person_age = b
        @nickname = @person_name[0,3]
    end
    
    def introduce
        return @intro = @person_name + @person_age
    end
    
    def birth_year
        time = Time.new
        return @birth_year = time.year - @person_age.to_i
    end
    
    def nickname
        return @nickname
    end
end