class Store < ActiveRecord::Base
    has_many :employees

    validates :name, length: { 
        :minimum => 3,
        :too_short => "must have as least %{count} letters."
    }
    validates :annual_revenue, numericality: { 
        :greater_than => 0,
        :too_short => "must be as least %{count}."
    }
end

end
