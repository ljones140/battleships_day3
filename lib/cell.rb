class Cell

  attr_accessor :content

  def initialize(options )
    @content = options.fetch(:content, String).new
  end

  def check_content
    return :ship if @content.is_a? Ship
  end

end
