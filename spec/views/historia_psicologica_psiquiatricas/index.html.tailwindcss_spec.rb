require 'rails_helper'

RSpec.describe "historia_psicologica_psiquiatricas/index", type: :view do
  before(:each) do
    assign(:historia_psicologica_psiquiatricas, [
      HistoriaPsicologicaPsiquiatrica.create!(),
      HistoriaPsicologicaPsiquiatrica.create!()
    ])
  end

  it "renders a list of historia_psicologica_psiquiatricas" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end
