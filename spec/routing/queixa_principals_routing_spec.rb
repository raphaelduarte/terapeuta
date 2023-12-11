require "rails_helper"

RSpec.describe QueixaPrincipalsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/queixa_principals").to route_to("queixa_principals#index")
    end

    it "routes to #new" do
      expect(get: "/queixa_principals/new").to route_to("queixa_principals#new")
    end

    it "routes to #show" do
      expect(get: "/queixa_principals/1").to route_to("queixa_principals#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/queixa_principals/1/edit").to route_to("queixa_principals#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/queixa_principals").to route_to("queixa_principals#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/queixa_principals/1").to route_to("queixa_principals#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/queixa_principals/1").to route_to("queixa_principals#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/queixa_principals/1").to route_to("queixa_principals#destroy", id: "1")
    end
  end
end
