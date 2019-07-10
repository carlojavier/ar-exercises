class Employee < ActiveRecord::Base
    belongs_to :store

    @store1.employees.create(first_name: "Bobby", last_name: "Lau", hourly_rate: 100)
    @store1.employees.create(first_name: "Phil", last_name: "Chan", hourly_rate: 100)
    @store1.employees.create(first_name: "Peter", last_name: "Yan", hourly_rate: 100)

    @store2.employees.create(first_name: "Seth", last_name: "Marks", hourly_rate: 100)
    @store2.employees.create(first_name: "Steve", last_name: "Wing", hourly_rate: 100)
    @store2.employees.create(first_name: "Nick", last_name: "Jenvey", hourly_rate: 40)


    validates :hourly_rate, numericality: { 
        :greater_than_or_equal_to => 40, 
        :less_than_or_equal_to => 200,
        :too_short => "must be as least %{count}.",
        :too_long => "must be at most %{count}."
    }

end

