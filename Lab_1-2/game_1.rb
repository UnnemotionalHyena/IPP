require "gosu"
require "./new_player"
require "./player"
require "./star"
require "./externiterator"
require "./command_pattern"

module ZOrder
  BACKGROUND, STARS, PLAYER, UI = *0..3
end

class Game < (Example rescue Gosu::Window)
  def initialize(player = Player)
    super 640, 480
    self.caption = "Star Game"

    @player = player
    @player.warp(320, 240)

    # Composition pattern *********************************************************
    @background_image = Gosu::Image.new("media/space.png", tileable: true)
    @stars            = Array.new
    @font             = Gosu::Font.new(20)

    # Command pattern *******************************************
    @buttonlist = ButtonList.new
    @bitem      = BItem.new("")
    @command    = AddItemToButtonListCommand.new(@bitem, @buttonlist)
    #************************************************************
    #*******************************************************************************
  end

  def update
    # Command Pattern *******************************************
    if Gosu.button_down? Gosu::KB_LEFT or Gosu.button_down? Gosu::GP_LEFT
      @bitem.button = "turn_left"
    end
    if Gosu.button_down? Gosu::KB_RIGHT or Gosu.button_down? Gosu::GP_RIGHT
      @bitem.button = "turn_right"
    end
    if Gosu.button_down? Gosu::KB_UP or Gosu.button_down? Gosu::GP_BUTTON_0
      @bitem.button = "accelerate"
    end

    @command.item = @bitem
    button        = UIButton.new(@command)
    button.press_button(@player)
    @bitem.button = ""
    #*************************************************************
    @player.move
    @player.collect_stars(@stars)

    if rand(100) < 4 and @stars.size < 25
      @stars.push(StarCollection.new.create_star([:red,:green,:blue].sample))
    end
  end

  def draw
    @background_image.draw(0, 0, ZOrder::BACKGROUND)
    @player.draw

    # External Iterator ********************************************************
    array_iterator = ExternalIterator.new(@stars)
    while array_iterator.has_next?
      array_iterator.next.draw
    end

    #***************************************************************************
    # @stars.each { |star| star.draw }
    @font.draw("Score: #{@player.score}", 10, 10, ZOrder::UI, 1.0, 1.0, Gosu::Color::YELLOW)
  end

  def button_down(id)
    if id == Gosu::KB_ESCAPE
      close
    else
      super
    end
  end
end

Game.new(New_Player.instance).show if __FILE__ == $0
