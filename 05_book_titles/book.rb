class Book
    # write your code here
    
    
    def title 
        @title
    end
    
    def title=(name)
        no_capital = ['and', 'the', 'a', 'an', 'in', 'of']
        name = name.split(" ")
        new_name = []
        name.each do |i|
            if no_capital.include?(i) == false
                new_name << i.capitalize
            else
                new_name << i
            end
            new_name
        end
        if no_capital.include?(new_name[0])
            new_name[0] = new_name[0].capitalize
            new_name
        end
         @title = new_name.join(" ")
    end
end