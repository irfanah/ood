class Gear
      attr_reader :chaining ,:cog

      def initialize(chaining, cog)
          @chaining = chaining
          @cog      = cog
      end

      def ratio
          chaining / cog.to_f
      end
end


puts Gear.new(52,11).ratio
puts Gear.new(30,27).ratio

# output
# 4.7272727272727275
# 1.1111111111111112
