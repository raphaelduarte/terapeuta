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

RSpec.describe "/nome_completos", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # NomeCompleto. As you add validations to NomeCompleto, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      NomeCompleto.create! valid_attributes
      get nome_completos_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      nome_completo = NomeCompleto.create! valid_attributes
      get nome_completo_url(nome_completo)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_nome_completo_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      nome_completo = NomeCompleto.create! valid_attributes
      get edit_nome_completo_url(nome_completo)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new NomeCompleto" do
        expect {
          post nome_completos_url, params: { nome_completo: valid_attributes }
        }.to change(NomeCompleto, :count).by(1)
      end

      it "redirects to the created nome_completo" do
        post nome_completos_url, params: { nome_completo: valid_attributes }
        expect(response).to redirect_to(nome_completo_url(NomeCompleto.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new NomeCompleto" do
        expect {
          post nome_completos_url, params: { nome_completo: invalid_attributes }
        }.to change(NomeCompleto, :count).by(0)
      end

    
      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post nome_completos_url, params: { nome_completo: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested nome_completo" do
        nome_completo = NomeCompleto.create! valid_attributes
        patch nome_completo_url(nome_completo), params: { nome_completo: new_attributes }
        nome_completo.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the nome_completo" do
        nome_completo = NomeCompleto.create! valid_attributes
        patch nome_completo_url(nome_completo), params: { nome_completo: new_attributes }
        nome_completo.reload
        expect(response).to redirect_to(nome_completo_url(nome_completo))
      end
    end

    context "with invalid parameters" do
    
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        nome_completo = NomeCompleto.create! valid_attributes
        patch nome_completo_url(nome_completo), params: { nome_completo: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested nome_completo" do
      nome_completo = NomeCompleto.create! valid_attributes
      expect {
        delete nome_completo_url(nome_completo)
      }.to change(NomeCompleto, :count).by(-1)
    end

    it "redirects to the nome_completos list" do
      nome_completo = NomeCompleto.create! valid_attributes
      delete nome_completo_url(nome_completo)
      expect(response).to redirect_to(nome_completos_url)
    end
  end
end
