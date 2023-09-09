class Department < ApplicationRecord
    # def self.entreprise(params)
    #     begin
    #         if params[:org_id].present?
    #             return JSON.parse(Department.where("org_id = #{params[:org_id]}").to_json(:except => [:created_at, :updated_at]))
    #           else
    #             return {"message" => "no data found"}
    #         #   end
    #         end
    #     rescue StandardError => e
    #         return {"message" => e}    
    #     end  

    # end

    def self.department(params)
        begin
            if department = Department.all
                return {success: true,data:department}
              else
                return {"message" => "no data found"}
            end
        rescue StandardError => e
            return {"message" => e}    
        end  

    end
end
