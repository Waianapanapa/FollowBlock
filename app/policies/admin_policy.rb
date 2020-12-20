
class AdminPolicy < Struct.new(:user, :dashboard)
  def index?
    user.admin?
  end
end