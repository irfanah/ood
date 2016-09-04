# Example 3  : Less Coupled Classes
# Refactor   : reveal dependencies at once place ,making the code easier to refactor in future


class Gear
     attr_reader :chaining, :cog, :rim ,:tire

     def initialize(chaining, cog, rim, tire)
         @chaining = chaining
         @cog      = cog
         @rim      = rim
         @tire     = tire
     end

     def gear_inches
         ratio * wheel.diameter
     end

     def ratio
         chaining / cog.to_f
     end

     def wheel
         @wheel = Wheel.new(rim, tire)
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

puts Gear.new(52,11,26,1.5).gear_inches

# Output
# 137.0909090909091
