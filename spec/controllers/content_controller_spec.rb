require 'spec_helper'

describe ContentController do

  describe "GET 'standard'" do
    it "returns http success" do
      get 'standard'
      response.should be_success
    end
  end

  describe "GET 'plus'" do
    it "returns http success" do
      get 'plus'
      response.should be_success
    end
  end

end
