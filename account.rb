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
end

