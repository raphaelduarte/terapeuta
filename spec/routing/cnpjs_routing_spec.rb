require "rails_helper"

RSpec.describe CnpjsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/cnpjs").to route_to("cnpjs#index")
    end

    it "routes to #new" do
      expect(get: "/cnpjs/new").to route_to("cnpjs#new")
    end

    it "routes to #show" do
      expect(get: "/cnpjs/1").to route_to("cnpjs#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/cnpjs/1/edit").to route_to("cnpjs#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/cnpjs").to route_to("cnpjs#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/cnpjs/1").to route_to("cnpjs#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/cnpjs/1").to route_to("cnpjs#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/cnpjs/1").to route_to("cnpjs#destroy", id: "1")
    end
  end
end
