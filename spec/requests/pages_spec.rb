require 'rails_helper'

describe "Pages", type: :request do
  describe "GET / (root)" do

    it "returns 200 OK" do
      get "/"
      expect(response).to have_http_status(:ok)
    end

    it "renders the home template" do
      get "/"
      expect(response).to render_template(:home)
    end

    it "includes the welcome message in the response body" do
      get "/"
      expect(response.body).to include("Welcome to Rails Practice 2")
    end
  end

  describe "GET /pages/home" do

    it "returns 200 OK" do
      get "/pages/home"
      expect(response).to have_http_status(:ok)
    end

    it "renders the home template" do
      get "/pages/home"
      expect(response).to render_template(:home)
    end

    it "includes the welcome message in the response body" do
      get "/pages/home"
      expect(response.body).to include("Welcome to Rails Practice 2")
    end
  end

  describe "Negative and edge cases" do
    it "returns 404 for unknown routes" do
      get "/not_a_real_page"
      expect(response).to have_http_status(404)
    end
  end
end
