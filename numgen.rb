require "securerandom"

class Generator

    def initialize(diff)
        @difficulty = (diff)
    end

    def generate_random_hex
        a = SecureRandom.hex(2)
        if @difficulty != 1
            a[rand(0..3)] = "0"
            a[rand(0..3)] = "0"
        end
        return a
    end

    def generate_random_hex_long
        a = SecureRandom.hex(4)
        if @difficulty != 1
            a[rand(0..7)] = "0"
            a[rand(0..7)] = "0"
            a[rand(0..7)] = "0"
            a[rand(0..7)] = "0"
        end
        return a
    end
end
