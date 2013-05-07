require 'spec_helper'

describe FeedsController do
  describe 'GET #index' do
    it 'assigns the username' do
      get 'index' , username: 'blairand'
      assigns(:username).should eq 'blairand'
    end

    it 'get the index template' do
      get 'index'
      response.should render_template :index
    end

    it 'assigns the instagram image for the user' do
      get 'index' , username: 'blairand'
      expect( assigns(:image) ).to be_kind_of Photo
    end
  end
end
