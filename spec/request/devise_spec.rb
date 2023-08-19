require 'rails_helper'

RSpec.describe 'homes', type: :request do
  describe 'Test: Root Path' do
    it 'Testing for response status' do
      get root_path
      expect(response).to have_http_status(200)
    end

    it 'Testing for page content' do
      get root_path
      expect(response.body).to include('LOG IN')
      expect(response.body).to include('SIGN UP')
    end
    it 'Testing for Rendering template' do
      get root_path
      expect(response).to render_template(:index)
    end
  end

  describe 'Test: Login Page Path' do
    it 'Testing for response status' do
      get '/users/login'
      expect(response).to have_http_status(200)
    end

    it 'Testing for page content' do
      get '/users/login'
      expect(response.body).to include('Email')
      expect(response.body).to include('Password')
    end
    it 'Testing for Rendering template' do
      get '/users/login'
      expect(response).to render_template(:new)
    end
  end

  describe 'Test: Sign Up Page Path' do
    it 'Testing for response status' do
      get '/users/register'
      expect(response).to have_http_status(200)
    end

    it 'Testing for page content' do
      get '/users/register'
      expect(response.body).to include('Email')
      expect(response.body).to include('New Password')
      expect(response.body).to include('Full Name')
      expect(response.body).to include('Confirmation Password')
    end

    it 'Testing for Rendering template' do
      get '/users/register'
      expect(response).to render_template(:new)
    end
  end
end
