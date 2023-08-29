# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(admin)
    #can :index, :logs, admin: admin

    # can :show if admin.super_admin?


  end
end
