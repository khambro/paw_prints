require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe "GET index" do
    it "returns a 200" do
      get :index
      expect(response.status).to eq 200
    end
  end

  describe "POST create" do
    it "creates a User" do
      count = User.count
      post :create, user: {name: "Blah", username: "Light", password: "Brazil"}
      expect(User.count).to eq count + 1
    end
  end

  describe "DELETE destroy" do
    it "creates a User" do
      count = User.count
      post :create, user: {name: "Blah", username: "Light", password: "Brazil"}
      expect(User.count).to eq count + 1
    end
  end


end
