class StringChecker
	def has_vowels?(str)
	 !!(str =~ /[aeiou]+/i)
	end
end