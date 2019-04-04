# frozen_string_literal: true

require 'rails_helper'

course_query = <<-GRAPHQL
  query($id: ID!){
    course(id: $id) {
      name
    }
  }
GRAPHQL

describe 'Course Queries', type: :request do
  it 'loads course by ID' do
    c = create(:course)
    result = GqlApiSchema.execute(course_query, variables: { id: c.id })
    puts result
    p_result = result['data']['course']
    expect(p.id).to eq p_result['id']
  end
end
