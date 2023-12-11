require "rails_helper"

RSpec.describe HistoriaDoencaAtualsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/historia_doenca_atuals").to route_to("historia_doenca_atuals#index")
    end

    it "routes to #new" do
      expect(get: "/historia_doenca_atuals/new").to route_to("historia_doenca_atuals#new")
    end

    it "routes to #show" do
      expect(get: "/historia_doenca_atuals/1").to route_to("historia_doenca_atuals#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/historia_doenca_atuals/1/edit").to route_to("historia_doenca_atuals#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/historia_doenca_atuals").to route_to("historia_doenca_atuals#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/historia_doenca_atuals/1").to route_to("historia_doenca_atuals#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/historia_doenca_atuals/1").to route_to("historia_doenca_atuals#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/historia_doenca_atuals/1").to route_to("historia_doenca_atuals#destroy", id: "1")
    end
  end
end
