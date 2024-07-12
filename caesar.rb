def caesar(string, shift)
  string.split('').map { |char|
   if char =~ /\W/
    char
   else shift.times.reduce(char) { |char, _| char.next }[-1]
  end
}.join
end

puts caesar("What a string", 5)
