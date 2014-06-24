require 'rails_helper'

describe Category do
  it { should have_many(:videos) }


  describe "#{}recent_videos" do
    it " return the video in the reverse chronical order by created_at" do
      horror = Category.create(name: 'horror')
      monk = Video.create(title: "monk", description: "monk monk", created_at: 1.day.ago, category: horror)
      futurama = Video.create(title: "futurama", description: "space story", created_at: 2.day.ago, category: horror)
      expect(horror.recent_videos).to eq([monk, futurama])
    end
    it "return all the videos if there are less than 6 videos in the category" do
      horror = Category.create(name: 'horror')
      monk = Video.create(title: "monk", description: "monk monk", created_at: 1.day.ago, category: horror)
      futurama = Video.create(title: "futurama", description: "space story", created_at: 2.day.ago, category: horror)
      expect(horror.recent_videos.count).to eq(2)
    end
    it "returns 6 videos if there are more than 6 videos" do
      horror = Category.create(name: 'horror')
      7.times { Video.create(title:"foo", description: "bar", category: horror)}
      expect(horror.recent_videos.count).to eq(6)
    end
    it "returns the most recent 6 videos" do
      horror = Category.create(name: 'horror')
      6.times { Video.create(title:"foo", description: "bar", category: horror)}
      test = Video.create(title:"test", description: "bar", created_at: 1.day.ago, category: horror)
      expect(horror.recent_videos).not_to include(test)
    end
    it "return an empty array if the category has no video at all" do
      horror = Category.create(name: 'horror')
      expect(horror.recent_videos).to eq([])
    end
  end

end