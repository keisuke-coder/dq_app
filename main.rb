require "./character.rb"
require "./brave.rb"
require "./monster.rb"


brave = Brave.new(name: "ゆうしゃ", hp: 238, offense: 203, defense: 129)
monster = Monster.new(name: "アークデーモン", hp: 210, offense: 140, defense: 80)



puts "#{monster.name}があらわれた！"
while true
  brave.attack(monster)
  if monster.hp == 0
    puts "*=*=*=*=*=*=*=*=*=*=*=*"
    brave.disp_hp(brave)
    monster.disp_hp(monster)
    puts "*=*=*=*=*=*=*=*=*=*=*=*"
    puts "#{monster.name} をやっつけた!"
  end
  break if monster.hp == 0
  monster.attack(brave)
  puts "*=*=*=*=*=*=*=*=*=*=*=*"
  brave.disp_hp(brave)
  monster.disp_hp(monster)
  puts "*=*=*=*=*=*=*=*=*=*=*=*"
  if brave.hp == 0
    puts "#{brave.name} はしんでしまった!"
  end
  break if brave.hp == 0
end