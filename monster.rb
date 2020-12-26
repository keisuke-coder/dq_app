class Monster < Character
  #勇者に攻撃
  def attack(brave)
    @damage = @offense - brave.defense / 2
    brave.hp -= @damage
    brave.hp <= 0 ? brave.hp = 0 : brave.hp
    puts "#{@name}の攻撃!"
    puts "#{brave.name}は #{@damage} のダメージを受けた!"
  end
end