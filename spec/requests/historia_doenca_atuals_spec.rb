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

RSpec.describe "/historia_doenca_atuals", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # HistoriaDoencaAtual. As you add validations to HistoriaDoencaAtual, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      HistoriaDoencaAtual.create! valid_attributes
      get historia_doenca_atuals_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      historia_doenca_atual = HistoriaDoencaAtual.create! valid_attributes
      get historia_doenca_atual_url(historia_doenca_atual)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_historia_doenca_atual_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      historia_doenca_atual = HistoriaDoencaAtual.create! valid_attributes
      get edit_historia_doenca_atual_url(historia_doenca_atual)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new HistoriaDoencaAtual" do
        expect {
          post historia_doenca_atuals_url, params: { historia_doenca_atual: valid_attributes }
        }.to change(HistoriaDoencaAtual, :count).by(1)
      end

      it "redirects to the created historia_doenca_atual" do
        post historia_doenca_atuals_url, params: { historia_doenca_atual: valid_attributes }
        expect(response).to redirect_to(historia_doenca_atual_url(HistoriaDoencaAtual.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new HistoriaDoencaAtual" do
        expect {
          post historia_doenca_atuals_url, params: { historia_doenca_atual: invalid_attributes }
        }.to change(HistoriaDoencaAtual, :count).by(0)
      end

    
      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post historia_doenca_atuals_url, params: { historia_doenca_atual: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested historia_doenca_atual" do
        historia_doenca_atual = HistoriaDoencaAtual.create! valid_attributes
        patch historia_doenca_atual_url(historia_doenca_atual), params: { historia_doenca_atual: new_attributes }
        historia_doenca_atual.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the historia_doenca_atual" do
        historia_doenca_atual = HistoriaDoencaAtual.create! valid_attributes
        patch historia_doenca_atual_url(historia_doenca_atual), params: { historia_doenca_atual: new_attributes }
        historia_doenca_atual.reload
        expect(response).to redirect_to(historia_doenca_atual_url(historia_doenca_atual))
      end
    end

    context "with invalid parameters" do
    
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        historia_doenca_atual = HistoriaDoencaAtual.create! valid_attributes
        patch historia_doenca_atual_url(historia_doenca_atual), params: { historia_doenca_atual: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested historia_doenca_atual" do
      historia_doenca_atual = HistoriaDoencaAtual.create! valid_attributes
      expect {
        delete historia_doenca_atual_url(historia_doenca_atual)
      }.to change(HistoriaDoencaAtual, :count).by(-1)
    end

    it "redirects to the historia_doenca_atuals list" do
      historia_doenca_atual = HistoriaDoencaAtual.create! valid_attributes
      delete historia_doenca_atual_url(historia_doenca_atual)
      expect(response).to redirect_to(historia_doenca_atuals_url)
    end
  end
end