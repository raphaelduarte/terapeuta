require "rails_helper"

RSpec.describe EstadoCivilsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/estado_civils").to route_to("estado_civils#index")
    end

    it "routes to #new" do
      expect(get: "/estado_civils/new").to route_to("estado_civils#new")
    end

    it "routes to #show" do
      expect(get: "/estado_civils/1").to route_to("estado_civils#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/estado_civils/1/edit").to route_to("estado_civils#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/estado_civils").to route_to("estado_civils#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/estado_civils/1").to route_to("estado_civils#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/estado_civils/1").to route_to("estado_civils#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/estado_civils/1").to route_to("estado_civils#destroy", id: "1")
    end
  end
end
