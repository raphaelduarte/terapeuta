require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/queixa_principals", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # QueixaPrincipal. As you add validations to QueixaPrincipal, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      QueixaPrincipal.create! valid_attributes
      get queixa_principals_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      queixa_principal = QueixaPrincipal.create! valid_attributes
      get queixa_principal_url(queixa_principal)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_queixa_principal_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      queixa_principal = QueixaPrincipal.create! valid_attributes
      get edit_queixa_principal_url(queixa_principal)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new QueixaPrincipal" do
        expect {
          post queixa_principals_url, params: { queixa_principal: valid_attributes }
        }.to change(QueixaPrincipal, :count).by(1)
      end

      it "redirects to the created queixa_principal" do
        post queixa_principals_url, params: { queixa_principal: valid_attributes }
        expect(response).to redirect_to(queixa_principal_url(QueixaPrincipal.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new QueixaPrincipal" do
        expect {
          post queixa_principals_url, params: { queixa_principal: invalid_attributes }
        }.to change(QueixaPrincipal, :count).by(0)
      end

    
      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post queixa_principals_url, params: { queixa_principal: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested queixa_principal" do
        queixa_principal = QueixaPrincipal.create! valid_attributes
        patch queixa_principal_url(queixa_principal), params: { queixa_principal: new_attributes }
        queixa_principal.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the queixa_principal" do
        queixa_principal = QueixaPrincipal.create! valid_attributes
        patch queixa_principal_url(queixa_principal), params: { queixa_principal: new_attributes }
        queixa_principal.reload
        expect(response).to redirect_to(queixa_principal_url(queixa_principal))
      end
    end

    context "with invalid parameters" do
    
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        queixa_principal = QueixaPrincipal.create! valid_attributes
        patch queixa_principal_url(queixa_principal), params: { queixa_principal: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested queixa_principal" do
      queixa_principal = QueixaPrincipal.create! valid_attributes
      expect {
        delete queixa_principal_url(queixa_principal)
      }.to change(QueixaPrincipal, :count).by(-1)
    end

    it "redirects to the queixa_principals list" do
      queixa_principal = QueixaPrincipal.create! valid_attributes
      delete queixa_principal_url(queixa_principal)
      expect(response).to redirect_to(queixa_principals_url)
    end
  end
end
