load "numgen.rb"

class Tests

    def test_generator
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
<<<<<<< HEAD
	orig = Generator.new()
	orig.generate_random_hex
	
	shift = rand(6...8)
	
	insert = Generator.new()
	insert.generate_random_hex
	
	a = "orig | (insert << #{shift})"
	
	input = "int orig = #{orig};\nint insert = #{insert};\nint a = #{a};\nprintf(\"%d\\n\", a);"
=======
    	orig = Generator.new()
    	orig.generate_random_hex

    	shift = rand(6...8)
>>>>>>> b901263892d17db4f8ec09146e5878e5df80ae74

    	insert = Generator.new()
    	insert.generate_random_hex

    	a = "orig | (insert << #{shift})"
    end

    def type2
    	orig = Generator.new()
<<<<<<< HEAD
	orig.generate_random_hex
	
	shift = rand(6...8)
	
	insert = Generator.new()
	insert.generate_random_hex
	
	a = "orig | (insert << #{shift})"
	
	b = "orig | (insert << #{shift})"
	
	andd = "a & b"
	
	input = "int orig = #{orig};\nint insert = #{insert};\nint andd = #{andd};\nprintf(\"%d\\n\", andd);"
    end

    def type3
	i=Generator.new()
	i.generate_random_hex
	
	number = rand(5..10)
	
	left = "i | (1<<#{number})"
	
	input = "int i = #{i};\nint left = #{left};\nprintf(\"%d\\n\", left);"
	
=======
    	orig.generate_random_hex

    	shift = rand(6...8)

    	insert = Generator.new()
    	insert.generate_random_hex

    	a = orig | (insert << #{shift})

    	b = orig | (insert << #{shift})

    	andd = "a & b"
    end

    def type3
    	i=Generator.new()
    	i.generate_random_hex

    	number = rand(5..10)

    	left = "i | (1<<#{i})"
>>>>>>> b901263892d17db4f8ec09146e5878e5df80ae74
    end

    def type4
    	value1=Generator.new()
    	value1.generate_random_hex_long

    	shift1 = rand(2..3)
<<<<<<< HEAD
	shift2 = rand(2..3)
	
    	value2=Generator.new()
	value2.generate_random_hex_long
	
	result = "(value1 << #{shift1}) ^ (value2 >> #{shift2})"
	
	input = "long value1 = #{value1};\nlong value2 = #{value2};\nlong result = #{result};\nprintf(\"%d\\n\", result);"
=======
    	shift2 = rand(2..3)

        	value2=Generator.new()
    	value2.generate_random_hex_long
>>>>>>> b901263892d17db4f8ec09146e5878e5df80ae74

    	result = "(value1 << #{shift1}) ^ (value2 >> #{shift2})"
    end

    def type5
    	value1 = rand(100..600)
    	value2 = rand(100..600)

<<<<<<< HEAD
	shift1 = rand(2..3)
	shift2 = rand(2..3)
	
	result = "(value1 << #{shift1}) ^ (value2 >> #{shift2})"
	
	input = "int value1 = #{value1};\nint value2 = #{value2};\n int result = #{result};\nprintf(\"%d\\n\", result);"
=======
    	shift1 = rand(2..3)
    	shift2 = rand(2..3)

    	result = "(value1 << #{shift1}) ^ (value2 >> #{shift2})"
>>>>>>> b901263892d17db4f8ec09146e5878e5df80ae74
    end

    def type6
    	testValue = Generator.new()
    	testValue.generate_random_hex_long

    	shift = rand(2..4)

<<<<<<< HEAD
	shift = rand(2..4)
	
	if_test = "if(testValue & (1 << #{shift}))"
	input = "long testValue = {testValue};\nint a = 0;\n#{if_test}{a = 1;}\nelse{a = 2;}\nprintf(\"%d\\n\", a);"
=======
    	if_test = "if(testValue & (1 << #{shift}))"
>>>>>>> b901263892d17db4f8ec09146e5878e5df80ae74
    end

    def type7
    	testValue = Generator.new()
    	testValue.generate_random_hex_long

    	shift = rand(2..4)

<<<<<<< HEAD
	if_test = "if((result = testValue & testValue ^ testValue | (1 << #{shift})))"
	
	input = "long testValue = {testValue};\nint a = 0;\nint result = 0;\n#{if_test}{a = 1;}\nelse{a = 2;}\nprintf(\"%d\\n\", a);"
=======
    	if_test = "if((result = testValue & testValue ^ testValue | (1 << #{shift})))"
>>>>>>> b901263892d17db4f8ec09146e5878e5df80ae74
    end

end
