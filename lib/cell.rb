class Cell

  attr_accessor :content

  def initialize(options )
    @content = options.fetch(:content, String).new
  end
end
