class UserService
  def self.build()
    UserService.new()
  end

  def create_new_user(first_name:, last_name:, email:)
    User.create!(first_name: first_name, last_name: last_name, email: email)
  end
end
