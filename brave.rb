class Brave < Character 
  #モンスターに攻撃
  def attack(monster)
    @damage = @offense - monster.defense / 2
    monster.hp -= @damage
    monster.hp <= 0 ? monster.hp = 0 : monster.hp
    puts "#{@name}の攻撃!"
    puts "#{monster.name}に #{@damage} のダメージを与えた!"
  end
end