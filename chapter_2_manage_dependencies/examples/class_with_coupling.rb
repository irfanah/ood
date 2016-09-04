# Example 1  : Less Coupled Classes
#
# # List of dependencies (classes need to know)
# 1. name of another class
# 2. name of a message of another class
# 3. all arguments with message of another class
# 4. order in arguments with message of another class

class Gear
     attr_reader :chaining, :cog, :rim, :tire

     def initialize(chaining,cog,rim,tire)
         @chaining = chaining
         @cog      = cog
         @rim      = rim
         @tire     = tire
     end

     def gear_inches
         ratio * Wheel.new(rim,tire).diameter
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

puts Gear.new(52,11,26,1.5).gear_inches

# Output
# 137.0909090909091
