module ControllerMacros
    def login_admin
      before(:each) do
        @request.env["devise.mapping"] = Devise.mappings[:admin]
        sign_in FactoryBot.create(:admin) # Using factory girl as an example
      end
    end
  
  
    def login_operator
      before(:each) do
        @request.env["devise.mapping"] = Devise.mappings[:company_user]
        sign_in FactoryBot.create(:company_user)
      end
    end
  
    def login_user
      before(:each) do
        @request.env["devise.mapping"] = Devise.mappings[:user]
        sign_in FactoryBot.create(:user)
      end
    end
  end