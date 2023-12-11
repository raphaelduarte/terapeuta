require "rails_helper"

RSpec.describe HistoriaMedicaPregressasController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/historia_medica_pregressas").to route_to("historia_medica_pregressas#index")
    end

    it "routes to #new" do
      expect(get: "/historia_medica_pregressas/new").to route_to("historia_medica_pregressas#new")
    end

    it "routes to #show" do
      expect(get: "/historia_medica_pregressas/1").to route_to("historia_medica_pregressas#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/historia_medica_pregressas/1/edit").to route_to("historia_medica_pregressas#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/historia_medica_pregressas").to route_to("historia_medica_pregressas#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/historia_medica_pregressas/1").to route_to("historia_medica_pregressas#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/historia_medica_pregressas/1").to route_to("historia_medica_pregressas#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/historia_medica_pregressas/1").to route_to("historia_medica_pregressas#destroy", id: "1")
    end
  end
end
