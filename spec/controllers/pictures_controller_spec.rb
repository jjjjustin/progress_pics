require 'rails_helper'

RSpec.describe PicturesController, type: :controller do

  describe 'exists?' do
    it "should exist" do
      expect(PicturesController).to_not be_nil
    end
  end

  describe 'run' do
    let(:picture) { PicturesController.new }

    it 'responds to create' do
      expect(picture).to respond_to(:create)
    end
  end
end





