require 'rails_helper'

describe 'POST to /api/v1/reads' do
  it 'exists' do
    data = { read: 'https://www.youtube.com/watch?v=tntOCGkgt98'}

    post "/api/v1/reads", data.to_json

    expect(response).to be_success
  end
end
