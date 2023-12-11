require "rails_helper"

RSpec.describe HistoriaPsicologicaPsiquiatricasController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/historia_psicologica_psiquiatricas").to route_to("historia_psicologica_psiquiatricas#index")
    end

    it "routes to #new" do
      expect(get: "/historia_psicologica_psiquiatricas/new").to route_to("historia_psicologica_psiquiatricas#new")
    end

    it "routes to #show" do
      expect(get: "/historia_psicologica_psiquiatricas/1").to route_to("historia_psicologica_psiquiatricas#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/historia_psicologica_psiquiatricas/1/edit").to route_to("historia_psicologica_psiquiatricas#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/historia_psicologica_psiquiatricas").to route_to("historia_psicologica_psiquiatricas#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/historia_psicologica_psiquiatricas/1").to route_to("historia_psicologica_psiquiatricas#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/historia_psicologica_psiquiatricas/1").to route_to("historia_psicologica_psiquiatricas#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/historia_psicologica_psiquiatricas/1").to route_to("historia_psicologica_psiquiatricas#destroy", id: "1")
    end
  end
end
