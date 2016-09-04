# Example 5
# refactor : seperate example to two classes Gear and Wheel.

class Gear
      attr_reader :chaining ,:cog ,:wheel

      def initialize(chaining, cog, wheel=nil)
          @chaining = chaining
          @cog      = cog
          @wheel    = wheel
      end

      def ratio
          chaining / cog.to_f
      end

      def gear_inches
          ratio * wheel.diameter
      end
end

class Wheel
      attr_reader :rim ,:tire

      def initialize(rim, tire)
          @rim   = rim
          @tire  = tire
      end

      def diameter
          rim+(tire * 2)
      end

      def circumference
          diameter * Math::PI
      end

end

@wheel = Wheel.new(26,1)
puts @wheel.circumference
puts Gear.new(52,11).ratio
puts Gear.new(52,11,@wheel).gear_inches


# output
# 87.96459430051421
# 4.7272727272727275
# 132.36363636363637
