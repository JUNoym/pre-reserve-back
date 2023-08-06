class Users::RegistrationsController < Devise::RegistrationsController
    respond_to :json
  
    def create
      super do |resource|
        if resource.persisted?
          # 成功時のカスタムレスポンス
          render json: { message: '登録が成功しました' }, status: 201
          return
        end
      end
    end
  end
  