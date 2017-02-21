load 'shell_greeter.rb'



puts "Hi! Before I help you out, what shall you name me?"
print ">"

call_name = gets.chomp
shell = Shell_greeter.new(call_name)


puts shell.greet (rand(4))
puts
puts "At this stage, #{shell.my_name} can do the following"
puts " TIME will let me give you the current time"
puts " HELLO #{shell.my_name} is just to be nice to me and tell me hi, "
puts "EUCLID gives #{shell.my_name} a chance to show off the Euclid algorithm for HCF....or it crashes the program. It'll kill me. don't do this one"
puts "POEM [KEYWORD] gets you... a poem, the default one is kinda silly, but if you get the right keyword, you get one of the extras"
puts "EXIT lets you end #{shell.my_name}.exe , not that that's the real program name, but I've always wanted it to be that!"
puts "note that the commands don't have to be in all caps, #{shell.my_name} may be young, but I'm not dumb y'know!"
puts "Now press ENTER and we can begin"
gets.chomp



while true do
  print ">"
  command = gets.chomp

  case command.downcase

  when "hello #{shell.my_name}".downcase
    puts shell.greet (rand(shell.greet_num) + 2)
  when "exit"
    puts "Goodbye! #{shell.my_name} will be here if needed. Probably with a different name though."
    gets.chomp
    exit true
  when "time"
    puts " #{shell.my_name} sees that the current system time is #{get_time}"

  when "poem"
    puts "Keyword thanks"
    para = gets.chomp

    puts "~~~~~~~~~~~~~~~~~~~~~~~"
    puts "\n"
    puts shell.poem(para)
    puts "\n"
    puts "~~~~~~~~~~~~~~~~~~~~~~~"


  #when "euclid"
  #  puts "#{shell.my_name} is ready to test out Euclid's Algorithm for Highest Common Factor"
  #  puts "enter the larger number"
  #  num1 = gets.chomp
  #  puts "now enter the smaller number"
  #  num2 = gets.chomp
  #  puts "#{shell.my_name}'s result for the HCF of #{num1} and #{num2} is #{hcf(num1 , num2)}"
  else
    puts "Your dear #{shell.my_name} apologizes, I don't know what that command means"
  end

end
