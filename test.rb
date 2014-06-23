load "numgen.rb"
load "writer.rb"

class Tests

    def initialize(id)
        @compiler = C_writer.new(id)
        @generator = Generator.new()
    end

    def tests_generator
        type1 #1
        type1 #2
        type2 #3
        type2 #4
        type2 #5
        type3 #6
        type4 #7
        type5 #8
        type6 #9
        type7 #10
        type5 #11
        type5 #12
    end

    def type1
    	orig = @generator.generate_random_hex

    	shift = rand(6...9)

    	insert = @generator.generate_random_hex

    	a = "orig | (insert << #{shift})"

    	input = "int orig = 0x#{orig};\nint insert = 0x#{insert};\nint a = #{a};\nprintf(\"%x\\n\", a);"

        @compiler.set_code(input)
        @compiler.lock_n_load
    end

    def type2
    	orig = @generator.generate_random_hex

    	shift = rand(6...9)

    	insert = @generator.generate_random_hex

    	a = "orig | (insert << #{shift})"

    	b = "orig | (insert << #{shift})"

    	andd = "a & b"

    	input = "int orig = 0x#{orig};\nint insert = 0x#{insert};\nint a = #{a};\nint b = #{b};\nint andd = #{andd};\nprintf(\"%x\\n\", andd);"

        @compiler.set_code(input)
        @compiler.lock_n_load
    end

    def type3
    	i = @generator.generate_random_hex

    	number = rand(5..11)

    	left = "i | (1<<#{number})"

    	input = "int i = 0x#{i};\nint left = #{left};\nprintf(\"%x\\n\", left);"

        @compiler.set_code(input)
        @compiler.lock_n_load
    end

    def type4
    	value1 = @generator.generate_random_hex_long

    	shift1 = rand(2..3)

	   shift2 = rand(2..3)

    	value2 = @generator.generate_random_hex_long

    	result = "(value1 << #{shift1}) ^ (value2 >> #{shift2})"

    	input = "long value1 = 0x#{value1};\nlong value2 = 0x#{value2};\nlong result = #{result};\nprintf(\"%x\\n\", result);"

        @compiler.set_code(input)
        @compiler.lock_n_load
    end

    def type5
    	value1 = rand(100..600)
    	value2 = rand(100..600)

    	shift1 = rand(2..3)
    	shift2 = rand(2..3)

    	result = "(value1 << #{shift1}) ^ (value2 >> #{shift2})"

    	input = "int value1 = #{value1};\nint value2 = #{value2};\nint result = #{result};\nprintf(\"%d\\n\", result);"

        @compiler.set_code(input)
        @compiler.lock_n_load
    end

    def type6
    	testValue = @generator.generate_random_hex_long

    	shift = rand(2..4)

    	shift = rand(2..4)

    	if_test = "if(testValue & (1 << #{shift}))"
    	input = "long testValue = 0x#{testValue};\nint a = 0;\n#{if_test}{a = 1;}\nelse{a = 2;}\nprintf(\"%d\\n\", a);"

        @compiler.set_code(input)
        @compiler.lock_n_load
    end

    def type7
    	testValue = @generator.generate_random_hex_long

    	shift = rand(2..4)

    	if_test = "if((result = testValue & testValue ^ testValue | (1 << #{shift})))"

    	input = "long testValue = 0x#{testValue};\nint a = 0;\nint result = 0;\n#{if_test}{a = 1;}\nelse{a = 2;}\nprintf(\"%d\\n\", a);"

        @compiler.set_code(input)
        @compiler.lock_n_load
    end

end

tests_to_do = ARGV[0]

if tests_to_do == nil
    tests_to_do = 1
end

tests_to_do.to_i.times do |current|
    going_test = Tests.new(current+1)
    going_test.tests_generator
end
