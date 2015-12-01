require 'rails_helper'

RSpec.describe Todo, '#completed?' do
  it 'returns true when completed_at is set' do
    todo = Todo.new(completed_at: Time.current)
    expect(todo).to be_completed
  end

  it 'returns false when completed_at is nil' do
    todo = Todo.new(completed_at: nil)
    expect(todo).not_to be_completed
  end
end
