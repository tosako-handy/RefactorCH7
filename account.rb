class Account
  PREMIUM_DEFAULT_CHARGE = 10
  PREMIUM_GRACE_PERIOD = 7
  PREMIUM_MULTIPLIER = 0.85
  REGULAR_MULTIPLIER = 1.75
  BANK_FEE = 4.5

  def overdraft_change
    if @account_type.premium?
      result = PREMIUM_INITIAL_CHARGE
      result += (@days_overdrawn - PREMIUM_GRACE_PERIOD) * PREMIUM_MULTIPLIER if @days_overdrawn > PREMIUM_GRACE_PERIOD
      result
    else
      @days_overdrawn * REGULAR_MULTIPLIER
    end
  end

  def bacnk_charge
    result = BANK_FEE
    result += overdraft_change if @days_overdrawn > 0
    result
  end

  def interest_for_amount_days(amount, days)
    @interet_rate * amount * days / 365
  end
end

