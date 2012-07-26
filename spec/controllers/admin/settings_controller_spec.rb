require 'spec_helper'

describe Admin::SettingsController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  describe "PUT 'update'" do
    it "returns http success" do
      put 'save_settings'
      response.should be_success
    end
  end

end

