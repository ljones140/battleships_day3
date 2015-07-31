class Cell

  attr_accessor :content

  def initialize(options )
    @content = options.fetch(:content, String).new
  end

  def check_contents
    
  end

end
