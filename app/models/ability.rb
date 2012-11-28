class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.has_role? :admin
      can :manage, :all
    else
      can :view, :standard if user.has_role? :standard
      can :view, :plus if user.has_role? :plus
    end
  end
end
