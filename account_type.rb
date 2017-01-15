class AccountType
  PREMIUM_DEFAULT_CHARGE = 10
  PREMIUM_GRACE_PERIOD = 7
  PREMIUM_MULTIPLIER = 0.85
  REGULAR_MULTIPLIER = 4.5
  def overdraft_charge(days_overdrawn)
    if premium?
      result = PREMIUM_INITIAL_CHARGE
      result += (days_overdrawn - PREMIUM_GRACE_PERIOD) * PREMIUM_MULTIPLIER if days_overdrawn > PREMIUM_GRACE_PERIOD
      result
    else
      days_overdrawn * REGULAR_MULTIPLIER
    end
  end
end

