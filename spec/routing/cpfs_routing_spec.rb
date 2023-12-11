require "rails_helper"

RSpec.describe CpfsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/cpfs").to route_to("cpfs#index")
    end

    it "routes to #new" do
      expect(get: "/cpfs/new").to route_to("cpfs#new")
    end

    it "routes to #show" do
      expect(get: "/cpfs/1").to route_to("cpfs#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/cpfs/1/edit").to route_to("cpfs#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/cpfs").to route_to("cpfs#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/cpfs/1").to route_to("cpfs#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/cpfs/1").to route_to("cpfs#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/cpfs/1").to route_to("cpfs#destroy", id: "1")
    end
  end
end
