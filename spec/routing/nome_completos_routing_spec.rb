require "rails_helper"

RSpec.describe NomeCompletosController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/nome_completos").to route_to("nome_completos#index")
    end

    it "routes to #new" do
      expect(get: "/nome_completos/new").to route_to("nome_completos#new")
    end

    it "routes to #show" do
      expect(get: "/nome_completos/1").to route_to("nome_completos#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/nome_completos/1/edit").to route_to("nome_completos#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/nome_completos").to route_to("nome_completos#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/nome_completos/1").to route_to("nome_completos#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/nome_completos/1").to route_to("nome_completos#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/nome_completos/1").to route_to("nome_completos#destroy", id: "1")
    end
  end
end
