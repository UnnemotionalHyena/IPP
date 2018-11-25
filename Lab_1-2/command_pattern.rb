class UIButton
  attr_reader :command

  def initialize(command)
    @command = command
  end

  def press_button(player)
    @command.execute(player)
  end
end

class BItem
  attr_accessor :button

  def initialize(button)
    @button = button
  end
end

class ButtonList
  attr_reader :list
  def initialize
    @list = []
    File.open("logs/log.txt", 'w')
  end

  def add_button(button)
    return if button.button == ""
    @list << button.clone
    File.open("logs/log.txt", "a"){|f| f.write("#{button.button}\n")}
  end
end

class AddItemToButtonListCommand
  attr_accessor :item, :buttonlist

  def initialize(item, buttonlist)
    @item       = item
    @buttonlist = buttonlist
  end

  def execute(player)
    @buttonlist.add_button(@item)
    player.send(@item.button) unless @item.button == ""
  end
end
