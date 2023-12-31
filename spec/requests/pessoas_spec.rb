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

RSpec.describe "/pessoa", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # Pessoas. As you add validations to Pessoas, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Pessoas.create! valid_attributes
      get pessoas_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      pessoa = Pessoas.create! valid_attributes
      get pessoa_url(pessoa)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_pessoa_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      pessoa = Pessoas.create! valid_attributes
      get edit_pessoa_url(pessoa)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Pessoas" do
        expect {
          post pessoas_url, params: { pessoa: valid_attributes }
        }.to change(Pessoas, :count).by(1)
      end

      it "redirects to the created pessoa" do
        post pessoas_url, params: { pessoa: valid_attributes }
        expect(response).to redirect_to(pessoa_url(Pessoas.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Pessoas" do
        expect {
          post pessoas_url, params: { pessoa: invalid_attributes }
        }.to change(Pessoas, :count).by(0)
      end

    
      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post pessoas_url, params: { pessoa: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested pessoa" do
        pessoa = Pessoas.create! valid_attributes
        patch pessoa_url(pessoa), params: { pessoa: new_attributes }
        pessoa.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the pessoa" do
        pessoa = Pessoas.create! valid_attributes
        patch pessoa_url(pessoa), params: { pessoa: new_attributes }
        pessoa.reload
        expect(response).to redirect_to(pessoa_url(pessoa))
      end
    end

    context "with invalid parameters" do
    
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        pessoa = Pessoas.create! valid_attributes
        patch pessoa_url(pessoa), params: { pessoa: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested pessoa" do
      pessoa = Pessoas.create! valid_attributes
      expect {
        delete pessoa_url(pessoa)
      }.to change(Pessoas, :count).by(-1)
    end

    it "redirects to the pessoa list" do
      pessoa = Pessoas.create! valid_attributes
      delete pessoa_url(pessoa)
      expect(response).to redirect_to(pessoas_url)
    end
  end
end
