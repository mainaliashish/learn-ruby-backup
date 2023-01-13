# i = 1
# while i < 10 do
#   puts i
#   i += 1
# end 


time = 24

until time == 0
  if time == 1
    puts " You have #{time} hour left."
  else
    puts " You have #{time} hours left."
  end
  time -= 1
end