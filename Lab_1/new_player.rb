require "singleton"

class New_Player
  include Singleton
  attr_reader :score

  def initialize
    @image = Gosu::Image.new("media/new_starfighter.bmp")
    @beep = Gosu::Sample.new("media/new_beep.wav")
    @x = @y = @vel_x = @vel_y = @angle = 0.0
    @score = 0
  end

  def warp(x, y)
    @x, @y = x, y
  end

  def turn_left
    @angle -= 6
  end

  def turn_right
    @angle += 6
  end

  def accelerate
    @vel_x += Gosu.offset_x(@angle, 5)
    @vel_y += Gosu.offset_y(@angle, 5)
  end

  def move
    @x += @vel_x
    @y += @vel_y
    @x %= 640
    @y %= 480

    @vel_x *= 0.5
    @vel_y *= 0.5
  end

  def draw
    @image.draw_rot(@x, @y, ZOrder::PLAYER, @angle)
  end

  def collect_stars(stars)
    stars.reject! do |star|
      if Gosu.distance(@x, @y, star.x, star.y) < 35
        @score += 10
        @beep.play
        true
      else
        false
      end
    end
  end
end
