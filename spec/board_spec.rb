require 'board'

describe Board do

let(:ship){ double(:ship, size: 3, place: true, confirm_place: :ship) }
let(:grid){ double(:grid, insert: true) }
let(:subject){described_class.new({size: 10, grid: grid})}

  it "has a ships array" do
    expect(subject.ships).to eq []
  end

  it "responds to place method" do
    expect(subject).to respond_to(:place)
  end

  describe " #place" do

    it 'puts placed ship in ships' do
      subject.place(ship, "A1", :horizontal)
      expect(subject.ships).to include ship
    end

    xit 'calls insert method on grid' do
      expect(grid).to receive(:insert).with(ship, "A1")
      subject.place(ship, "A1", :horizontal)
    end

    it 'checks insert with direction returns three times' do
      expect(grid).to receive(:insert).exactly(3).times
      subject.place(ship, "A3", :horizontal)
    end

    it 'checks insert with direction returns three times' do
      expect(grid).to receive(:insert).exactly(3).times
      subject.place(ship, "A3", :vertical)
    end

    it 'only allow direction to be vertical or horizontal' do
      expect{subject.place(ship, "A3", :diagonal)}.to raise_error "only horizontal or vertical allowed"
    end
  end
end
