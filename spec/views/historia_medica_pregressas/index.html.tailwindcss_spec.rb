require 'rails_helper'

RSpec.describe "historia_medica_pregressas/index", type: :view do
  before(:each) do
    assign(:historia_medica_pregressas, [
      HistoriaMedicaPregressa.create!(),
      HistoriaMedicaPregressa.create!()
    ])
  end

  it "renders a list of historia_medica_pregressas" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end
