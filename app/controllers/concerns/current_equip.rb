module CurrentEquip
    private
    def set_equip
        @equip = Equip.find(session[:equip_id])
    rescue ActiveRecord::RecordNotFound
        @equip = Equip.create
        session[:equip_id] = @equip.id
    end
end
