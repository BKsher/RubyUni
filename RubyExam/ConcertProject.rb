# Concert event class
class Concert
    attr_accessor :genre, :date, :price, :performers, :location, :booking
  
    def initialize(genre, date, price, performers, location)
      @genre = genre
      @date = date
      @price = price
      @performers = performers
      @location = location
    end
  end
  
  # location class
  class Location
    attr_accessor :name, :address, :seating
  
    def initialize(name, address, seating)
      @name = name
      @address = address
      @seating = seating
    end
  end
  
  # Seat reservation class
  class Booking
    attr_accessor :name, :phone, :seats
  
    def initialize(name, phone, seats)
      @name = name
      @phone = phone
      @seats = seats
    end
  end
  

# A method for filtering concert events by genre
def filter_by_genre(concerts, genre)
    concerts.select { |c| c.genre == genre }
end
  
# Method for filtering concert events by date
def filter_by_date(concerts, date)
    concerts.select { |c| c.date == date }
end
  
# A method for filtering concert events by price
def filter_by_price(concerts, price)
    concerts.select { |c| c.price == price }
end
  
# Method for filtering concert events by name of performer
def filter_by_performers(concerts, performer)
    concerts.select { |c| c.performers.include?(performer) }
end

# A method for filtering concert events by location
def filter_by_location(concerts, location)
    concerts.select { |c| c.location == location }
end

# Create concert events
concert1 = Concert.new("Rock", "2022-12-08", 100, ["Metallica", "Slipknot"], "Olimpiyskiy")
concert2 = Concert.new("Pop", "2022-12-09", 150, ["Ariana Grande", "Selena Gomez"], "VDNH")
concert3 = Concert.new("Rap", "2022-12-10", 200, ["Eminem", "Travis Scott"], "Olimpiyskiy")
concerts = [concert1, concert2, concert3]

# Filter concert events by genre
rock_concerts = filter_by_genre(concerts, "Rock")
puts "Rock concerts:"
rock_concerts.each { |c| puts c.inspect }

# Filter concert events by date
concerts_on_2022_12_09 = filter_by_date(concerts, "2022-12-09")
puts "\nConcerts on 2022-12-09:"
concerts_on_2022_12_09.each { |c| puts c.inspect }

# Filter concert events by price
expensive_concerts = filter_by_price(concerts, 200)
puts "\nExpensive concerts:"
expensive_concerts.each { |c| puts c.inspect }

# Filter concert events by name of performer
concerts_with_eminem = filter_by_performers(concerts, "Eminem")
puts "\nConcerts with Eminem:"
concerts_with_eminem.each { |c| puts c.inspect }

# Filter concert events by location
concerts_at_olimpiyskiy = filter_by_location(concerts, "Olimpiyskiy")
puts "\nConcerts at Olimpiyskiy:"
concerts_at_olimpiyskiy.each { |c| puts c.inspect }
  