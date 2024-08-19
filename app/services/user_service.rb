class UserService
  def self.build()
    UserService.new()
  end

  def create_new_user(first_name:, last_name:, email:, user_type: "base")
    user = User.create!(first_name: first_name, last_name: last_name, email: email, user_type: user_type)

    if user.save
      {
        success: true,
        exception_id: user.id
      }
    else
      Rails.logger.error("Create new user error: ")
      raise CreateUserException, "Unable to create a new user."
    end
  end
end
