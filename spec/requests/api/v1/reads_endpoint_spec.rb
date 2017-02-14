require 'rails_helper'

describe 'POST to /api/v1/reads' do
  it 'exists' do
    data = { read: "https://www.youtube.com/watch?v=tntOCGkgt98"}

    read_count = Read.count

    post "/api/v1/reads", data.to_json

    expect(response).to be_success
    expect(Read.count).to eq(read_count + 1)
  end
end
