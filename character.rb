class Character
  #キャラクターの登録
  attr_reader :name, :hp, :offense, :defense
  attr_writer :hp
  def initialize(name:, hp:, offense:, defense:)
    @name = name
    @hp = hp
    @offense = offense
    @defense = defense
  end

  def disp_individual_character_hp(character)
    puts "【#{character.name}】HP: #{character.hp}"
  end
end