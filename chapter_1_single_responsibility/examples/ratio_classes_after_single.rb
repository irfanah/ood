# Example 5
# refactor : seperate example to two classes Gear and Wheel.

class Gear
      attr_reader :chaining ,:cog ,:wheel

      def initialize(chaining, cog, wheel=nil)
          @chaining = chaining
          @cog      = cog
          @rim      = wheel
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

      def initialize(rim, tyre)
          @rim   = rim
          @tire  = tire
      end

      def diameter
          rim + (tire * 2)
      end

      def circumference
          diameter * Math::PI
      end

end

@wheel = Wheel.new(26,1.5)
puts Gear.new(52,11).ratio
puts Gear.new(52,11,@wheel).gear_inches
puts Gear.new(52,11,@wheel).gear_inches


# output
# 4.7272727272727275
# ratio_classes_after_single.rb:18:in `gear_inches': undefined method `diameter' for nil:NilClass (NoMethodError)
#	from ratio_classes_after_single.rb:42:in `<main>'
