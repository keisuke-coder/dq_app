require "./character.rb"
require "./brave.rb"
require "./monster.rb"


brave = Brave.new(name: "ゆうしゃ", hp: 238, offense: 203, defense: 129)
monster = Monster.new(name: "アークデーモン", hp: 210, offense: 140, defense: 80)

def disp_multiple_character_hp(brave, monster)
  puts "*=*=*=*=*=*=*=*=*=*=*=*"
  brave.disp_individual_character_hp(brave)
  monster.disp_individual_character_hp(monster)
  puts "*=*=*=*=*=*=*=*=*=*=*=*"
end

puts "#{monster.name}があらわれた！"
while true
  brave.attack(monster)
  if monster.hp == 0
    disp_multiple_character_hp(brave, monster)
    puts "#{monster.name} をやっつけた!"
  end
  break if monster.hp == 0
  monster.attack(brave)
  disp_multiple_character_hp(brave, monster)
  if brave.hp == 0
    puts "#{brave.name} はしんでしまった!"
  end
  break if brave.hp == 0
end
