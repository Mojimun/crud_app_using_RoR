class Role < ApplicationRecord
    # def self.all_role
    #     if roll =Role.all
    #         # @data = Role.all
    #         return {success:true,data: roll}
    #     else
    #         return {"message"=>"not found"}
    #     end
    # end

    def self.all_role
        if @data=Role.all
            return {success:true,data: @data}
        else
            return {"message"=>"not found"}
        end
    end
end
