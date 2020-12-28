require "./character.rb"
require "./brave.rb"
require "./monster.rb"


brave = Brave.new(name: "ゆうしゃ", hp: 238, offense: 203, defense: 129)
#monster = Monster.new(name: "アークデーモン", hp: 210, offense: 140, defense: 80)
monster = Monster.new(name: "シドー", hp: 250, offense: 255, defense: 255)


def disp_multiple_character_hp(brave, monster)
  puts "*=*=*=*=*=*=*=*=*=*=*=*"
  brave.disp_individual_character_hp
  monster.disp_individual_character_hp
  puts "*=*=*=*=*=*=*=*=*=*=*=*"
end

def disp_dead_character(brave, monster)
  if monster.hp == 0
    puts "#{monster.name} をやっつけた!"
  elsif brave.hp == 0 
    puts "#{brave.name} はしんでしまった!"
  end
end

puts "#{monster.name}があらわれた！"
while brave.hp >= 1 && monster.hp >= 1
  brave.attack(monster)
  monster.attack(brave) if monster.hp >= 1
  disp_multiple_character_hp(brave, monster)
end
disp_dead_character(brave, monster)
