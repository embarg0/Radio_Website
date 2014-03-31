require "spec_helper"

describe HostsShowsController do
  describe "routing" do

    it "routes to #index" do
      get("/hosts_shows").should route_to("hosts_shows#index")
    end

    it "routes to #new" do
      get("/hosts_shows/new").should route_to("hosts_shows#new")
    end

    it "routes to #show" do
      get("/hosts_shows/1").should route_to("hosts_shows#show", :id => "1")
    end

    it "routes to #edit" do
      get("/hosts_shows/1/edit").should route_to("hosts_shows#edit", :id => "1")
    end

    it "routes to #create" do
      post("/hosts_shows").should route_to("hosts_shows#create")
    end

    it "routes to #update" do
      put("/hosts_shows/1").should route_to("hosts_shows#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/hosts_shows/1").should route_to("hosts_shows#destroy", :id => "1")
    end

  end
end
