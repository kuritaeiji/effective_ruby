class Bad
  def ==(other)
    true
  end
end

bad = Bad.new
puts(bad == false)
puts(false == bad)