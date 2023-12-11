require "rails_helper"

RSpec.describe RevisaoSistemasController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/revisao_sistemas").to route_to("revisao_sistemas#index")
    end

    it "routes to #new" do
      expect(get: "/revisao_sistemas/new").to route_to("revisao_sistemas#new")
    end

    it "routes to #show" do
      expect(get: "/revisao_sistemas/1").to route_to("revisao_sistemas#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/revisao_sistemas/1/edit").to route_to("revisao_sistemas#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/revisao_sistemas").to route_to("revisao_sistemas#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/revisao_sistemas/1").to route_to("revisao_sistemas#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/revisao_sistemas/1").to route_to("revisao_sistemas#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/revisao_sistemas/1").to route_to("revisao_sistemas#destroy", id: "1")
    end
  end
end
