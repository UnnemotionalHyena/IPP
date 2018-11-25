class Star
  attr_reader :x, :y

  def initialize(color)
    @animation   = Gosu::Image::load_tiles("media/star.png", 25, 25)
    @color       = Gosu::Color::BLACK.dup
    case color
    when 1 then color_l = [255,0,0]
    when 2 then color_l = [0,255,0]
    when 3 then color_l = [0,0,255]
    end
    @color.red   = color_l[0]
    @color.green = color_l[1]
    @color.blue  = color_l[2]
    @x           = rand * 640
    @y           = rand * 480
  end

  def draw
    img = @animation[Gosu.milliseconds / 100 % @animation.size]
    img.draw(@x - img.width / 2.0, @y - img.height / 2.0,
        ZOrder::STARS, 1, 1, @color, :add)
  end
end

class StarCollection
  attr_accessor :star_prototype_collection

  def initialize
    @star_prototype_collection = {
      :red   => Star.new(1),
      :green => Star.new(2),
      :blue  => Star.new(3)
    }
  end

  def create_star(star_type)
    star_prototype = star_prototype_collection[star_type]
    raise 'unsupported star type' unless star_prototype

    star = star_prototype.clone
    star
  end
end
