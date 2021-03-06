module Mutations
  module User
    class SignUp < BaseMutation
      null true

      field :user, Models::UserType, null: true

      def resolve(email:, passwd:, nickname:)
        @user = ::User.create!(email: email, nickname: nickname, password: passwd)

        { user: @user }
      end
    end
  end
end
