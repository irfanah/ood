# enahncement : also calculate the effect of the difference in wheels.
#               gear inches = wheel diameter * gear ratio
#               wheel diameter = rim diameter + twice tire diameter.
#               now ,change the Gear class to add this new behavior

class Gear
      attr_reader :chaining ,:cog ,:rim ,:tyre

      def initialize(chaining, cog, rim, tyre)
          @chaining = chaining
          @cog      = cog
          @rim      = rim
          @tyre     = tyre
      end

      def ratio
          chaining / cog.to_f
      end

      def gear_inches
          ratio * (rim + (tyre*2))
      end
end


puts Gear.new(52,11,26,1.5).gear_inches
puts Gear.new(52,11,24,1.25).gear_inches

# output
# 137.0909090909091
# 125.27272727272728
