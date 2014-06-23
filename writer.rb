
class C_writer
    @begin_file
    @end_file
    @code

    def initialize()
        @begin_file = "#include <stdio.h>\nint main(){"
        @end_file = "return 0;\n}"
    end

    def set_code(code)
        @code = code
    end

    def write_in_file
        File.open("test.c", "w") do |file|
            file.write("#{@begin_file}\n#{@code}\n#{@end_file}")
        end
    end

    def run_file
        system("gcc test.c");
        result = system("./a.out >> tests/test_results.txt");
    end

    def write_in_txt
        data_file = "tests/test.txt"
        File.open(File.expand_path(data_file), "a") do |file|
            file << @code.split("printf")[0]
            file << "\n\n"
        end
    end
