class Ability
  include CanCan::Ability

  def initialize user
    user ||= User.new
    if user.role?
      can :manage, :all
    else
      can :read, :all
      can :manage, Suggestion, user_id: user.id
      can :manage, Comment, user_id: user.id
    end
  end
end
