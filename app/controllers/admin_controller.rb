class AdminController < ApplicationController
  def index
    @total_equips = Equip.count
  end
end
