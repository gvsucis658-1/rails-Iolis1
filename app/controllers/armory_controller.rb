class ArmoryController < ApplicationController
  skip_before_action :authorize
  def index
    @armors = Armor.order(:name)
  end
end
