
class Cell

  attr_accessor :content

  def initialize(options )
    @content = options[:content].new
  end
end
