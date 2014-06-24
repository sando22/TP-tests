require "securerandom"

class Generator

    def initialize(diff)
        @difficulty = (diff)
    end

    def generate_random_hex
        if @difficulty != 1
            a = "ffff"
            a[rand(0..3)] = "0"
            a[rand(0..3)] = "0"
        else
            a = SecureRandom.hex(2)
        end
        return a
    end

    def generate_random_hex_long
        if @difficulty != 1
            a = "ffffffff"
            a[rand(0..7)] = "0"
            a[rand(0..7)] = "0"
            a[rand(0..7)] = "0"
            a[rand(0..7)] = "0"
        else
            a = SecureRandom.hex(4)
        end
        return a
    end
end
