
class Flyer
  attr_reader :name, :email, :miles_flown

  def initialize(name, email, miles_flown)
    @name = name
    @email = email
    @miles_flown = miles_flown
  end

  def to_s
    "#{name} (#{email}): #{miles_flown}"
  end
end

flyers = []

1.upto(5) do |number|
	flyers << Flyer.new("Flyer #{number}", "flyer#{number}", number * 1000)
	
end

flyers.each do |flyer|
	puts "#{flyer.name} - #{flyer.miles_flown}"
end

total = 0 

flyers.each do |flyer|
	total += flyer.miles_flown
end

puts "Total miles flown: #{total}"


promotions = { "United" => 1.5, "Delta" => 2.0, "Lufthansa" => 2.5}

promotions.each do |line, multi|
	puts "Earn #{multi}x miles by fliyin #{line}"
end
