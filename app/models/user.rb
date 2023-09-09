class User < ApplicationRecord

    def self.all_user
        if user =User.all
            @data = User.all
            return {"total"=>@data.length,"data"=> @data}
        else
            return {"message"=>"not found"}
        end
    end
    def self.show_user(params)
        # user_id = params[:id]
        if user =User.find(params[:id])
        return {"data"=> user}
        else
            return {"message"=>"not found"}
        end
    end
    # def self.create_user_bk(params) 
    #     # print "====>",params
    #     begin
    #         user_name = params[:name]
    #         user_first_name = params[:first_name]
    #         user_email = params[:email]
    #         user_image = params[:image]
    #         user_phone_number = params[:phone_number]
    #         user_entreprise_id = params[:entreprise]
    #         user_entreprise = Entreprise.find_by_id(params[:entreprise])["name"]
    #         user_department = Department.find_by_id(params[:department])["name"]
    #         user_department_id = params[:department]
    #         user_team = Team.find_by_id(params[:team])["name"]
    #         user_team_id = params[:team]
    #         user_designation = Designation.find_by_id(params[:designation])["name"]
    #         user_designation_id = params[:designation]
    #         user_date_of_joining = params[:date_of_joining]
    #         user_type_of_contract = params[:type_of_contract]
    #         user_end_contract_date = params[:end_contract_date]
    #         user_type_of_worker = params[:type_of_worker]
    #         user_working_time = params[:working_time]
    #         user_role = Role.find_by_id(params[:role])["name"]
    #         user_role_id = params[:role]
    #         user_leaves_cl = params[:cl]
    #         user_leaves_sl = params[:sl]
    #         user_obj = User.new
    #         user_obj.name = user_name
    #         user_obj.first_name = user_first_name
    #         user_obj.email = user_email
    #         user_obj.phone_number = user_phone_number
    #         user_obj.image = user_image
    #         user_obj.entreprise = user_entreprise
    #         user_obj.entreprise_id = user_entreprise_id
    #         user_obj.department = user_department
    #         user_obj.department_id = user_department_id
    #         user_obj.team = user_team
    #         user_obj.team_id = user_team_id
    #         user_obj.designation = user_designation
    #         user_obj.designation_id = user_designation_id
    #         user_obj.date_of_joining = user_date_of_joining
    #         user_obj.type_of_contract = user_type_of_contract
    #         user_obj.end_contract_date = user_end_contract_date
    #         user_obj.type_of_worker = user_type_of_worker
    #         user_obj.working_time = user_working_time
    #         user_obj.role = user_role
    #         user_obj.role_id = user_role_id
    #         user_obj.cl = user_leaves_cl
    #         user_obj.sl = user_leaves_sl
    #     check_email_exsist = User.where("email='#{user_email}'")

    #     if check_email_exsist.empty?
    #         user_flag= user_obj.save
    #         if user_flag
    #          return  {"message" => "User created sucessfully"}
    #         else
    #              return {"message" => "Something went wrong"}
    #         end
    #      else
    #          return {"message" => "user #{user_email} alreday exsists"}
    #      end
    #     rescue StandardError => e
        
    #         return {"message" => e}

    #     end
    # end
    def self.create_user(params) 
        print "params====>",params
        begin
            directory="/mnt/c/Users/Mojimun/OneDrive/Desktop/crudApp/public/images"
            if !(File.directory? directory) 
                 #if directory is not present then creating       
                FileUtils.mkdir_p directory, :mode => 0777 rescue nil
            end
            time = Time.now().strftime("%m_%d_%Y_%I_%M_%S%p") 
            uploaded_file_name = params[:file_content].original_filename
            file_extention = File.extname(uploaded_file_name)
            file_name = uploaded_file_name.split(file_extention)[0].split(' ').join('_')
            puts "==================file_name======#{file_name}" 
            target_file_name = "#{file_name}_#{time}_#{file_extention}"
            target_file_name_path="#{directory}/#{target_file_name}"
            FileUtils.move params[:file_content].path, target_file_name_path
            # target_file_name_path = target_file_name_path.split('mnt')[1]
            # target_file_name_path[target_file_name_path[0..1]] = target_file_name_path[0..1] + ':'

            user_name = params[:name]
            user_first_name = params[:first_name]
            user_email = params[:email]
            user_image = target_file_name_path.split("public")[1]
            user_phone_number = params[:phone_number]
            user_entreprise_id = params[:entreprise]
            user_entreprise = Entreprise.find_by_id(params[:entreprise])["name"]
            user_department = Department.find_by_id(params[:department])["name"]
            user_department_id = params[:department]
            user_team = Team.find_by_id(params[:team])["name"]
            user_team_id = params[:team]
            user_designation = Designation.find_by_id(params[:designation])["name"]
            user_designation_id = params[:designation]
            user_date_of_joining = params[:date_of_joining]
            user_type_of_contract = params[:type_of_contract]
            user_end_contract_date = params[:end_contract_date]
            user_type_of_worker = params[:type_of_worker]
            user_working_time = params[:working_time]
            user_role = Role.find_by_id(params[:role])["name"]
            user_role_id = params[:role]
            user_leaves_cl = params[:cl]
            user_leaves_sl = params[:sl]
            user_obj = User.new
            user_obj.name = user_name
            user_obj.first_name = user_first_name
            user_obj.email = user_email
            user_obj.phone_number = user_phone_number
            user_obj.image = user_image
            user_obj.entreprise = user_entreprise
            user_obj.entreprise_id = user_entreprise_id
            user_obj.department = user_department
            user_obj.department_id = user_department_id
            user_obj.team = user_team
            user_obj.team_id = user_team_id
            user_obj.designation = user_designation
            user_obj.designation_id = user_designation_id
            user_obj.date_of_joining = user_date_of_joining
            user_obj.type_of_contract = user_type_of_contract
            user_obj.end_contract_date = user_end_contract_date
            user_obj.type_of_worker = user_type_of_worker
            user_obj.working_time = user_working_time
            user_obj.role = user_role
            user_obj.role_id = user_role_id
            user_obj.cl = user_leaves_cl
            user_obj.sl = user_leaves_sl
        check_email_exsist = User.where("email='#{user_email}'")

        if check_email_exsist.empty?
            user_flag= user_obj.save
            if user_flag
             return  {"message" => "User created sucessfully"}
            else
                 return {"message" => "Something went wrong"}
            end
         else
             return {"message" => "user #{user_email} alreday exsists"}
         end
        rescue StandardError => e
        
            return {"message" => e}

        end
    end
    def self.update_user(params)
        begin
            params_keys = params.keys - ["controller", "action", "id"]
            set_str = []
            params_keys.each do |item|          
                if(User.attribute_names.include?(item))
                    if (item == "entreprise" || item == "department" || item == "team" || item == "designation" || item == "role")
                        data = item.camelize.constantize.find_by_id(params[item])["name"]
                        set_str << "#{item} = '#{data}'"
                        set_str << "#{item}_id = '#{params[item]}'"
                    else
                        set_str << "#{item} = '#{params[item]}'"
                    end
                else
                    return {"message" => "#{item} attr not found"} 
                end
            end

            update_sql = "update users set #{set_str.join(",")} where id = '#{params[:id]}' "
            
            # puts "======update_sql=====##{update_sql}"
            ActiveRecord::Base.connection.execute(update_sql)    
            return {"message" => "User updated sucessfully"} 
        rescue StandardError => e
            return {"message" => e}
        end    
    end

    def self.delete_user(params)
        begin
        user_id = params[:id] 
        # user_id =  JSON.parse(params[:id])
        check_id_exsist = User.where("id='#{user_id}'")
        puts "======================#{check_id_exsist.to_json}"
        if !check_id_exsist.empty?
        # delete_sql = "DELETE FROM users WHERE users.id in (#{user_id})"
        # response = ActiveRecord::Base.connection.execute(delete_sql)
            response=User.destroy(user_id);
            return {message: "user deleted successfully"}
        else
            return {message:"Id not found"}  
        end
        rescue StandardError => e
            return {"message" => e}    
        end  
    end

end
