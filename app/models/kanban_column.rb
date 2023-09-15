class KanbanColumn < ApplicationRecord
  belongs_to :kanban
  has_many :cards, dependent: :destroy

  accepts_nested_attributes_for :cards, allow_destroy: true
end
