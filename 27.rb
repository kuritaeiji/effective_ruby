class Combination
  def initialize(characters, colors)
    @characters = characters
    @colors = colors
  end

  def valid_combination
    valid_combination = catch(:jump) do
      @characters.each do |character|
        @colors.each do |color|
          if [character, color] == ['a', 'blue']
            throw(:jump, [character, color])
          end
        end
      end
    end
  end
end

combi = Combination.new(['c', 'b', 'a'], ['red', 'blue'])
print(combi.valid_combination)