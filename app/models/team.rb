class Team < ApplicationRecord
    # def self.show_team(params)
    #     begin
    #         filter_params=JSON.parse(params[:filter])
    #         set_str = []    
    #         set_str.push("div_id = #{filter_params["div_id"]}")    if filter_params.key?("div_id")
    #         set_str.push("org_id = #{filter_params["org_id"]}")    if filter_params.key?("org_id")
    #         set_str.push("default_team = #{filter_params["default_team"]}")    if filter_params.key?("default_team")
    #         team = Team.where(set_str.join(" and "))
    #         return {success: true,data: team}
    #     rescue StandardError => e
    #         return {"message" => e}    
    #     end  
    # end

    def self.show_team(params)
        if @data=Team.all
            return {success:true,data: @data}
        else
            return {"message"=>"not found"}
        end
    end


end
