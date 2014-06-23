require "securerandom"

class Generator

    def generate_random_hex
        a = SecureRandom.hex(2)

        return a
    end

    def generate_random_hex_long
        a = SecureRandom.hex(4)

        return a
    end
end
