require 'rails_helper'

RSpec.describe PicturesController, type: :controller do
  let(:photo) { Picture.new(caption: 'test', photo: '1', user_id: '1', created_at: '1') }
  let(:imagee) { Picture.new(caption: 'spec', photo: 'spec') }
  let(:picture) { photo }

  describe 'exists?' do
    it "should exist" do
      expect(PicturesController).to_not be_nil
    end
  end

  describe 'index' do


    it 'responds to index' do
      expect(Picture.all).to respond_to(:index)
    end

    it 'renders json' do
      expect(photo.index).to render_template(Hash)
    end
  end
end



