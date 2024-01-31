# ISOGRAMS

# An isogram is a word that has no repeating letters, consecutive or non-consecutive. Implement a function that determines
# whether a string that contains only letters is an isogram. Assume the empty string is an isogram. Ignore letter case.

# Tip: Output must be boolean
# Note: Avoid using of .uniq method

#1st way (Short way - using empty method and include)
def is_isogram(text)
  return true if text.empty?

  new_txt = []
  text.downcase.each_char do |char|
    return false if new_txt.include?(char)
    new_txt << char
  end

  true
end

p is_isogram("Dermatoglyphics")  # Should be true
p is_isogram("aba")              # Should be false
p is_isogram("moOse")            # Should be false
p is_isogram("")            # Should be true


#2nd way (without using empty and include method)
def is_isogram(text)
  return true if text.length == 0

  new_txt = []
  text.downcase.each_char do |txt|
    new_txt.each do |char|
      return false if txt == char
    end
    new_txt << txt
  end

   true
end

p is_isogram("Dermatoglyphics")  # Should be true
p is_isogram("aba")              # Should be false
p is_isogram("moOse")            # Should be false
p is_isogram("")            # Should be true
