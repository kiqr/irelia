# frozen_string_literal: true

class Irelia::AccountSwitcher::Component < Irelia::Component
  option :open, default: -> { false }
  option :direction, default: -> { :down }, in: %i[down up]

  option :team_name, optional: true
  option :name
  option :avatar

  renders_many :accounts, "AccountComponent"

  def variants
    class_names(
      "irelia-account-switcher",
      "irelia-account-switcher--default": variant == :default
    )
  end

  def team_name
    (@team_name == name || @team_name.nil?) ? "Personal account" : @team_name
  end

  class AccountComponent < Irelia::Component
    option :account_name
    option :url
    option :personal, default: -> { false }

    def icon
      personal ? "fa fa-user" : "fa fa-users"
    end
  end
end
