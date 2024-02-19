class Armor < ApplicationRecord
    has_many :line_items, dependent: :destroy
    before_destroy :ensure_not_referenced_by_any_line_item
    private
        def ensure_not_referenced_by_any_line_item
            unless line_items.empty?
                errors.add(:base, 'Line Items present')
                throw :abort
            end
        end
    validates :name, :armor_type, :armor_class, presence: true
    validates :weight, presence: true, numericality: { greater_than: 0 }, numericality: { less_than: 100}, format: { with: /\A\d+(?:\.\d{0,2})?\z/}
    validates :description, presence: true
    validates :intelligence, presence: true, numericality: { greater_than_or_equal_to: 0 }, numericality: { less_than: 21}
    validates :wisdom, presence: true, numericality: { greater_than_or_equal_to: 0 }, numericality: { less_than: 21}
    validates :strength, presence: true, numericality: { greater_than_or_equal_to: 0 }, numericality: { less_than: 21}
    validates :dexterity, presence: true, numericality: { greater_than_or_equal_to: 0 }, numericality: { less_than: 21}
    validates :constitution, presence: true, numericality: { greater_than_or_equal_to: 0 }, numericality: { less_than: 21}
    validates :charisma, presence: true, numericality: { greater_than_or_equal_to: 0 }, numericality: { less_than: 21}
end
