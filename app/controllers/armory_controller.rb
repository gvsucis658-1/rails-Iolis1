class ArmoryController < ApplicationController
  def index
    @armors = Armor.order(:name)
  end
end
