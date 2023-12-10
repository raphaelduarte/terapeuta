require "rails_helper"

RSpec.describe ProfissaosController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/profissaos").to route_to("profissaos#index")
    end

    it "routes to #new" do
      expect(get: "/profissaos/new").to route_to("profissaos#new")
    end

    it "routes to #show" do
      expect(get: "/profissaos/1").to route_to("profissaos#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/profissaos/1/edit").to route_to("profissaos#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/profissaos").to route_to("profissaos#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/profissaos/1").to route_to("profissaos#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/profissaos/1").to route_to("profissaos#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/profissaos/1").to route_to("profissaos#destroy", id: "1")
    end
  end
end
