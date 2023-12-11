require "rails_helper"

RSpec.describe RevisaoHabitosController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/revisao_habitos").to route_to("revisao_habitos#index")
    end

    it "routes to #new" do
      expect(get: "/revisao_habitos/new").to route_to("revisao_habitos#new")
    end

    it "routes to #show" do
      expect(get: "/revisao_habitos/1").to route_to("revisao_habitos#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/revisao_habitos/1/edit").to route_to("revisao_habitos#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/revisao_habitos").to route_to("revisao_habitos#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/revisao_habitos/1").to route_to("revisao_habitos#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/revisao_habitos/1").to route_to("revisao_habitos#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/revisao_habitos/1").to route_to("revisao_habitos#destroy", id: "1")
    end
  end
end
