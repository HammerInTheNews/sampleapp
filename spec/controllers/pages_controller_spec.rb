require 'spec_helper'

describe PagesController do
  render_views
  
  describe "GET 'home'" do
    it "returns http success" do
      #a function that issues a get request
      get 'home'
      #get a return from server
      response.should be_success
    end

    it "should have the right title" do
      get 'home'
      response.should have_selector("title",
        :content => "Ruby on Rails Tutorial Sample App | Home"
        )
    end
  end

  describe "GET 'contact'" do
    it "returns http success" do
      get 'contact'
      response.should be_success
    end
  end

  describe "GET 'about'" do
    it "returns http success" do
      get 'about'
      response.should be_success
    end
  end

end
