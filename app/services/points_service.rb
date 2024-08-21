# frozen_string_literal:true

# The system should be able to handle the following requirements:
# 1. When an employee starts with a company, the company gives them a small number of points as a welcome.
#   - Example: Employees get 100 points when they join a certain company
#   - * Create Points column in user DB
# 2. Employees can give each other bonuses with an arbitrary number of points, which are deducted from their own balance
# - Example: An employee gives another employee 25 points as thanks for their help
# - Example: The CEO gives the entire company 10 points to celebrate a great Q4
# - make bonus table
#   - creator
#   - comment
#   - points
#
# 3. Employees can earn specific achievements, that come with a set number of points
# - Example: 50 points for completing your first project
# - Example: 100 points for a positive performance review
#   - new table for achievements
#     - name ("ex first project")
#     - required_points

class PointsService
  def self.create_bonus(creator, comment, points, recipient_id)
    bonus = Bonu.new(creator: creator, comment: comment, points: points)

    if bonus.save
      api_response = {
        success: true,
        id: bonus.id
      }
      User.find(id: recipient_id)&.update(points: bonus.points)
    else
      Rails.logger.error("Error creating bonus: #{bonus.errors.full_messages}")
    end
  end

end