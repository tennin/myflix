require 'rails_helper'

describe  Video do
  it { should belong_to(:category) }
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:description) }

  describe "search_by_title" do
    it "returns empty array if there's no match" do
      hello = Video.create(title: 'hello', description: 'hello there')
      hello_there = Video.create(title: 'hello there', description: 'hello there there')
      expect(Video.search_by_title('more')).to eq([])
    end
    it "returns an array of one video if there's a exact match" do
      hello = Video.create(title: 'hello', description: 'hello there')
      futurama = Video.create(title: 'futurama', description: 'future story')
      expect(Video.search_by_title('hello')).to eq([hello])
    end
    it "returns an array of one video if there's a partial match" do
      hello = Video.create(title: 'hello', description: 'hello there')
      futurama = Video.create(title: 'futurama', description: 'future story')
      expect(Video.search_by_title('hell')).to eq([hello])
    end
    it "returns an array of all matches ordered by created date " do
      future = Video.create(title: 'future', description: 'space', created_at: 1.day.ago)
      futurama = Video.create(title: 'futurama', description: 'future story')
      expect(Video.search_by_title('fut')).to eq([futurama, future])
    end
    it "returns an empty array for a search with empty string" do
      future = Video.create(title: 'future', description: 'space', created_at: 1.day.ago)
      futurama = Video.create(title: 'futurama', description: 'future story')
      expect(Video.search_by_title('')).to eq([])
    end
  end

end