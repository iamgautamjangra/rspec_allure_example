require 'string_checker'

describe "Checking String contains vowels" do
	context "with valid inputs" do
	
		it "contains vowel" do
			sc = StringChecker.new
			test_string = 'uuu'
			expect(sc.has_vowels? test_string).to be true
		end
		
		it "should detect when a string doesn't contain vowels" do 
         sa = StringChecker.new 
         test_string = 'bcdfg' 
         expect(sa.has_vowels? test_string).to be false
      end 
	end
end