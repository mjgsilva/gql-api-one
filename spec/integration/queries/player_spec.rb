# frozen_string_literal: true

require 'rails_helper'

player_query = <<-GRAPHQL
  query($id: ID!){
    player(id: $id) {
      id
      name
    }
  }
GRAPHQL

describe 'Player Queries', type: :request do
  it 'loads players by ID' do
    p = create(:player)
    result = GqlApiSchema.execute(player_query, variables: { id: p.id })
    p_result = result['data']['player']
    expect(p.id).to eq p_result['id']
  end
end
