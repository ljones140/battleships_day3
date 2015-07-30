require 'board'

describe Board do

let(:ship){ double(:ship, place: true, confirm_place: :ship) }
let(:grid){ double(:grid, insert: true) }
let(:grid_class) {double :grid_class, create: grid, new: grid}
let(:subject){described_class.new({size: 10, container: grid_class})}

  it "has a ships array" do
    expect(subject.ships).to eq []
  end

  it "responds to place method" do
    expect(subject).to respond_to(:place)
  end

  describe " #place" do

    it 'puts placed ship in ships' do
      subject.place(ship, "A1", grid)
      expect(subject.ships).to include ship
    end

    it 'calls insert method on grid' do
      expect(grid).to receive(:insert).with(ship, "A1")
      subject.place(ship, "A1", grid)
    end
  end
end
