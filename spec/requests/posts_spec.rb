require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'GET #index' do
    it 'should have a response status code of 200 for success' do
      get users_path
      expect(response).to have_http_status(200)
    end

    it 'should render correct template' do
      get users_path
      expect(response).to render_template(:index)
    end

    it 'should have correct placeholder' do
      get users_path
      expect(response.body).to include('This page displays the all post')
    end
  end

  describe 'GET #show' do
    before(:each) { get user_path(1) }
    it 'should have a response status code of 200 for success' do
      expect(response).to have_http_status(200)
    end

    it 'should render correct template' do
      expect(response).to render_template(:show)
    end

    it 'should have correct placeholder' do
      expect(response.body).to include('This page displays the users post details')
    end
  end
end
