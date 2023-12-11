require "rails_helper"

RSpec.describe HistoriaFamiliarsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/historia_familiars").to route_to("historia_familiars#index")
    end

    it "routes to #new" do
      expect(get: "/historia_familiars/new").to route_to("historia_familiars#new")
    end

    it "routes to #show" do
      expect(get: "/historia_familiars/1").to route_to("historia_familiars#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/historia_familiars/1/edit").to route_to("historia_familiars#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/historia_familiars").to route_to("historia_familiars#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/historia_familiars/1").to route_to("historia_familiars#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/historia_familiars/1").to route_to("historia_familiars#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/historia_familiars/1").to route_to("historia_familiars#destroy", id: "1")
    end
  end
end
