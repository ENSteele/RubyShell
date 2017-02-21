#Shell Project, For now, relatively functionless, will add more.

def get_time
  Time.now
end

#Allows shell to do its thing with the name
class Shell_greeter
  #@@shell_name = "Ruby"

  def initialize(name)

    @shell_name = name
    @intro_array = ["#{self.my_name}? I like that name!", "For today, I'll let you call me #{self.my_name}.", "Hello there, I'm #{self.my_name}. It's great to meet you!", "Hi! #{self.my_name}, ready to serve!" , " #{self.my_name}, still here!", "Are you just gonna ask old #{self.my_name} to tell you hi all day buddy?", "Haha, its nice you remember me!"]
  end

  def my_name
    @shell_name.downcase.capitalize!
  end




  def greet ( index=0)
    return @intro_array[index]
  end

  def greet_num
    return @intro_array.length
  end

  def poem (season)

    @topic = season

    ditty = ""

    case @topic

    when "spring"

      ditty = "Salient spring skies \n Surely see souls safely  South \n Sunsetting Sorrows"

    when "charlie"

     ditty ="Piss, Procreate, Poo \n Mind of the dumbass Doggo \n Goddamned idiot dog. \n Farewell to you, my little friend"

   when "Tracy"

     ditty = "Delicate Hummingbird, clinging to life \n It sees me \n It flees \n And I watch it go \n To the flowers nearby , I wished it well \n For life and beauty are just precious things \n We should hold them close with our eyes, not with our hands \n Its steady flight uncertain, it flew by my yard \n \n Then the dog ate it. "


   when "lullaby"
     ditty = "Hush now\n Quiet now\n Come now, lay thy sleepy head\n Hush now\n Quiet now\n Time to go to bed \n Hush now, my dear child\n And may your sleep be free and light \n Hush my darling and good night"

   when "stardust"
     ditty = "The World Over Heaven\n Alight with Platinum Stars \n Carries our dreams on a Silver Chariot \n Wishes bountiful like lush Green fields \n Our Red blood burns as we chase them\n It is the Fool who denies his longing \n To pursue them in the Purple skies"

   when "Caillou"
     ditty = "Au revoir ma copain I won't see you again \n Years on, thinking of your life \n Those short lived years rife with strife \n When others would break down and cry\n You head your head high \n and so shall I"


   when "you"
    ditty = "Born to repeat, I cycle again\n Encounter problems I've known, I process and then\n I do the things I'm wont to do \n I do as I've been taught, what was told by you \n Other problems shall come, though I know not when\n So born to repeat, I'll cycle again"

  else
    ditty = "Babies poo. That's all they do\n I know its true and so do you \n If you're still sane by the time its two \n Then my friend, bully for you"

     return ditty

  end

end

end
