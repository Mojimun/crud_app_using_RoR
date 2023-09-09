class Designation < ApplicationRecord
    # def self.show_designation(params)
    #     div_id=JSON.parse(params[:filter])["div_id"]
    #     begin
    #         designation = Designation.where("div_id=#{div_id}")
    #         return {success: true,data: designation}
    #     rescue StandardError => e
    #         return {"message" => e}    
    #     end  
    # end

    def self.show_designation(params)
        begin
            if designation = Designation.all
                return {success: true,data:designation}
              else
                return {"message" => "no data found"}
            end
        rescue StandardError => e
            return {"message" => e}    
        end  
    end
end
