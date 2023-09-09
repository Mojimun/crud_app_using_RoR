class Entreprise < ApplicationRecord
    def self.show_entreprise(params)
        begin
            enterprise = Entreprise.all
            return {success:true,data: enterprise}
        rescue StandardError => e
            return {"message" => e}    
        end  
    end
end
