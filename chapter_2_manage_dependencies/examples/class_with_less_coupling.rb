# Example 2  : Less Coupled Classes
# Refactor   : Instead of being glued to Wheel,
#              Gear now just expects to be initialized with an object that can respond to diameter

class Gear
     attr_reader :chaining, :cog, :wheel

     def initialize(chaining, cog, wheel)
         @chaining = chaining
         @cog      = cog
         @wheel    = wheel
     end

     def gear_inches
         ratio * wheel.diameter
     end

     def ratio
         chaining / cog.to_f
     end
end

class Wheel
      attr_reader :rim ,:tire

      def initialize(rim, tire)
          @rim   = rim
          @tire  = tire
      end

      def diameter
          rim + (tire * 2)
      end
end

# Gear expects a 'Duck' that knows 'diameter'
puts Gear.new(52,11,Wheel.new(26,1.5)).gear_inches

# Output
# 137.0909090909091
