class Character
  #キャラクターの登録
  attr_reader :name, :hp, :defense
  attr_writer :hp
  def initialize(name:, hp:, offense:, defense:)
    @name = name
    @hp = hp
    @offense = offense
    @defense = defense
  end

  def disp_individual_character_hp
    puts "【#{@name}】HP: #{@hp}"
  end
end