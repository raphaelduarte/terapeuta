require "rails_helper"

RSpec.describe HistoriaSexualReprodutivasController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/historia_sexual_reprodutivas").to route_to("historia_sexual_reprodutivas#index")
    end

    it "routes to #new" do
      expect(get: "/historia_sexual_reprodutivas/new").to route_to("historia_sexual_reprodutivas#new")
    end

    it "routes to #show" do
      expect(get: "/historia_sexual_reprodutivas/1").to route_to("historia_sexual_reprodutivas#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/historia_sexual_reprodutivas/1/edit").to route_to("historia_sexual_reprodutivas#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/historia_sexual_reprodutivas").to route_to("historia_sexual_reprodutivas#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/historia_sexual_reprodutivas/1").to route_to("historia_sexual_reprodutivas#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/historia_sexual_reprodutivas/1").to route_to("historia_sexual_reprodutivas#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/historia_sexual_reprodutivas/1").to route_to("historia_sexual_reprodutivas#destroy", id: "1")
    end
  end
end
