load "writer.rb"

class Html
	def initialize(number)
		@test_number = number
	end

	def generate_html
		file_name = "tests/test_#{@test_number}_html.html"
		gosho = File.open(File.expand_path(file_name), "w")
		gosho.puts "<html><body>"
		gosho.puts "<div>"
		File.open("tests/test_#{@test_number}.txt", "r") do |f|
			f.each_line do |line|
				if line=="\n"
					gosho.puts "<p> ------------------------------------------------------ </p>"
				else
					gosho.puts "<p>#{line}</p>"
				end
			end
		f.close
		gosho.puts "</div>"
		gosho.puts "</body></html>"
		gosho.close
		end
	end

	def generate_html_results
		counter = 1
		file_name = "tests/test_#{@test_number}_results_html.html"
		gosho = File.open(File.expand_path(file_name), "w")
		gosho.puts "<html><body>"
		gosho.puts "<div>"
		File.open("tests/test_#{@test_number}_results.txt", "r") do |f|
			f.each_line do |line|
				gosho.puts "<p>#{counter}: #{line}</p>"
				counter=counter+1
			end
		f.close
		gosho.puts "</div>"
		gosho.puts "</body></html>"
		gosho.close
		end
	end
end
