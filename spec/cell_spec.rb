require "cell"

describe Cell do
  let(:water) { double( :water , create: true)  }
  let(:water_class){double :water_class, :new => water}
  let(:subject) {described_class.new({content: water_class})}


  it "contains water by default" do
    cell = described_class.new({content: water_class})
    expect(cell.content).to eq(water)
  end

  describe "#content" do

    it "can take a ship as content" do
      subject.content = :ship
      expect(subject.content).to eq(:ship)
    end
  end
end
