require "securerandom"

class Generator

    def generate_random_hex
        a = "0x" << SecureRandom.hex(2)
        print "chislo ", a, "\n"

        return a
    end
    
    def generate_random_hex_long
	a = "0x" << SecureRandom.hex(4)
        print "chislo ", a, "\n"

        return a
    end
end
