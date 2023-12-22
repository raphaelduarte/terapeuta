require "rails_helper"

RSpec.describe PessoasController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/pessoa").to route_to("pessoas#index")
    end

    it "routes to #new" do
      expect(get: "/pessoa/new").to route_to("pessoas#new")
    end

    it "routes to #show" do
      expect(get: "/pessoa/1").to route_to("pessoas#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/pessoa/1/edit").to route_to("pessoas#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/pessoa").to route_to("pessoas#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/pessoa/1").to route_to("pessoas#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/pessoa/1").to route_to("pessoas#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/pessoa/1").to route_to("pessoas#destroy", id: "1")
    end
  end
end
