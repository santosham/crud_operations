class Product < ApplicationRecord
	validates :name, presence: true   
	validates :price, presence: true  
	validates :short_description, presence: true   
	List =  ["watch", "system", "jeans", "paint"]    #names
	List1 =  ["1500", "50000", "600", "15000"]   # prices
	List2 =  [] 
	
end
