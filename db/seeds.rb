require 'destinations'

class Seed

  def self.begin
    @seed = Seed.new
    @seed.generate_destinations
  end

  def generate_destinations
    20.times do |i|
      destination = Destination.create!(
        country: Faker::Address.country,
        city: Faker::Address.city
      )
      puts "Destination #{i}: Country is #{destination.country} and city is '#{destination.city}'."
    end
  end
end

Seed.begin
