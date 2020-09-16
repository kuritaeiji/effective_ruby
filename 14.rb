class Widget
  def overlapping?(other)
    x1, y1 = [screen_x, screen_y]
    x2, y2 = other.screen_coordinates
  end

  protected
    def screen_coordinates
      [@screen_x, @screen_y]
    end
end