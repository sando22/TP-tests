
class C_writer
    @begin_file
    @end_file
    @code
    @test_number

    def initialize(number)
        @begin_file = "#include <stdio.h>\nint main(){"
        @end_file = "return 0;\n}"
        @test_number = number
    end

    def set_code(code)
        @code = code
    end

    def lock_n_load
        write_in_file
        run_file
        write_in_txt
    end

    def write_in_file
        File.open("test.c", "w") do |file|
            file.write("#{@begin_file}\n#{@code}\n#{@end_file}")
        end
    end

    def run_file
        system("gcc test.c -w");
        system("./a.out >> tests/test_#{@test_number}_results.txt");
    end

    def write_in_txt
        data_file = "tests/test_#{@test_number}.txt"
        File.open(File.expand_path(data_file), "a") do |file|
            file << @code.split("printf")[0]
            file << "\n\n"
        end
    end
end
