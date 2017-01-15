class Account
  BANK_FEE = 4.5

  def overdraft_change
    @account_type.overdraft_change(@days_overdrawn)
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

