require "rails_helper"

RSpec.describe NotificacaosController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/notificacaos").to route_to("notificacaos#index")
    end

    it "routes to #new" do
      expect(get: "/notificacaos/new").to route_to("notificacaos#new")
    end

    it "routes to #show" do
      expect(get: "/notificacaos/1").to route_to("notificacaos#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/notificacaos/1/edit").to route_to("notificacaos#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/notificacaos").to route_to("notificacaos#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/notificacaos/1").to route_to("notificacaos#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/notificacaos/1").to route_to("notificacaos#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/notificacaos/1").to route_to("notificacaos#destroy", id: "1")
    end
  end
end
