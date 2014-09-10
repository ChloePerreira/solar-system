# Solar system of lies

myPlanets = [
        {
        name: "Cygnus", 
        diameter: 3,
        mass: 4,
        moons: 20,
        solar_rotation: 0.5
        },
        {
        name: "Blargh",
        diameter: 9001,
        mass: 9,
        moons: 3,
        solar_rotation: 1000
        },
        {
        name: "Swimmingly",
        diameter: 7,
        mass: 7,
        moons: 7,
        solar_rotation: 7
        },
        {
        name: "Spatula",
        diamter: 63,
        mass: 4,
        moons: 90001,
        solar_rotation: 1
        }
]

class SolarSystem
        attr_accessor :planets, :planets_qty, :formation_date
        
        def initialize
                @planets=[] # important! you need to intialize an array to hold your planets
                @planets_qty=@planets.size
                @formation_date=rand(0..150)
        end

        def form_date
                @formation_date
        end
end

        
class Planet
                attr_accessor :name, :diameter, :mass, :moons, :solar_rotation
                
                def initialize(planet_element)
                        @name=planet_element[:name]
                        @diameter=planet_element[:diameter]
                        @mass=planet_element[:mass]
                        @moons=planet_element[:moons]
                        @solar_rotation=planet_element[:solar_rotation]
                end
end

# def planet_year
# needs to be associated with individual planet
# based on solar system's formation date
# loop over planets array and do calculation for each element

def planet_year(rotation_rate, formation_date)
        age = (2014-formation_date)*rotation_rate
        return age
end

def print_planet_menu(array)
        puts "Pick a planet, any planet (choose by option number)"
        i=0
        array do |element|
                puts "Option #{i}: #{element.name}"
        end
end

def options(array,input)
        while true
                puts "Select one to view: name, diamter, mass, or moons"
                input2 = gets.chomp
                if input2 == "exit"
                        exit
                else
                        puts "#{input2.upcase} is #{array[input].input2}"
                end
        end
end

# Make solar system, put planets into solar system
x = SolarSystem.new
myPlanets.each do |planet| #make new planet, push into solar system (here  x.planet)
        newPlanet=Planet.new(planet)
        x.planets.push(newPlanet)
end

input = "blah"
puts "Enter exit to quit"
while input != "exit"
        while true 
                puts "Pick a planet:\nCygnus\nBlargh\nSwimmingly\nSpatula"
                input = gets.chomp.downcase
                case input
                when "cygnus"
                        input = 0
                        break
                when "blargh"
                        input = 1
                        break
                when "swimmingly"
                        input = 2
                        break
                when "spatula"
                        input = 3
                        break
                when "exit"
                        exit
                else "Invalid input. Try again."
                end
        end

        while true
                puts "Select one to view: name, diameter, mass,  moons, or age"
                input2 = gets.chomp.downcase
                case input2
                when "name"
                        puts x.planets[input].name
                when "diameter"
                        puts x.planets[input].diameter
                when "mass"
                        puts x.planets[input].mass
                when "moons"
                        puts x.planets[input].moons
                when "age"
                        puts planet_year(x.formation_date, x.planets[input].solar_rotation)
                when "exit"
                        exit
                else "Invalid input. Try again."

                end
        end
end
#puts x.planets[1].name

