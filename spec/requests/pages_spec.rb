require 'rails_helper'

describe "Pages", type: :request do
  it "returns 200 and includes 'Welcome to Rails Practice 2' on root path" do
    get "/"
    expect(response).to have_http_status(:ok)
    expect(response.body).to include("Welcome to Rails Practice 2")
  end
end
