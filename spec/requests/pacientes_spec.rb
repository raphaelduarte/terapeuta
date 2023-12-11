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

RSpec.describe "/pacientes", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # Paciente. As you add validations to Paciente, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Paciente.create! valid_attributes
      get pacientes_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      paciente = Paciente.create! valid_attributes
      get paciente_url(paciente)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_paciente_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      paciente = Paciente.create! valid_attributes
      get edit_paciente_url(paciente)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Paciente" do
        expect {
          post pacientes_url, params: { paciente: valid_attributes }
        }.to change(Paciente, :count).by(1)
      end

      it "redirects to the created paciente" do
        post pacientes_url, params: { paciente: valid_attributes }
        expect(response).to redirect_to(paciente_url(Paciente.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Paciente" do
        expect {
          post pacientes_url, params: { paciente: invalid_attributes }
        }.to change(Paciente, :count).by(0)
      end

    
      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post pacientes_url, params: { paciente: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested paciente" do
        paciente = Paciente.create! valid_attributes
        patch paciente_url(paciente), params: { paciente: new_attributes }
        paciente.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the paciente" do
        paciente = Paciente.create! valid_attributes
        patch paciente_url(paciente), params: { paciente: new_attributes }
        paciente.reload
        expect(response).to redirect_to(paciente_url(paciente))
      end
    end

    context "with invalid parameters" do
    
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        paciente = Paciente.create! valid_attributes
        patch paciente_url(paciente), params: { paciente: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested paciente" do
      paciente = Paciente.create! valid_attributes
      expect {
        delete paciente_url(paciente)
      }.to change(Paciente, :count).by(-1)
    end

    it "redirects to the pacientes list" do
      paciente = Paciente.create! valid_attributes
      delete paciente_url(paciente)
      expect(response).to redirect_to(pacientes_url)
    end
  end
end
