require 'rails_helper'

describe ContainersController do
  describe '#hash' do
    it 'creates a string of 10' do
      gen_hash = controller.send(:hash)
      expect(gen_hash.length).to eq(10)
    end
  end

  describe '#index' do
    before do
      allow(controller).to receive(:hash).and_return('abc123')
    end

    it 'redirects to a new show url with hash' do
      get :index
      expect(response).to redirect_to(container_path('abc123'))
    end
  end
end
