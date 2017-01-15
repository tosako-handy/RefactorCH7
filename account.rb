class Account
  BANK_FEE = 4.5

  def bacnk_charge
    result = BANK_FEE
    if @days_overdrawn > 0
      result += @account_type.overdraft_change(@days_overdrawn)
    end
    result
  end
end

