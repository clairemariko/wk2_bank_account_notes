class Bank

  def initialize(accounts)
  @accounts = accounts
  end

  def number_of_accounts
    return @accounts.length
  end

  def total_cash
    money_bag = []
    for account in @accounts
      money_bag += account.value
    end
    return money_bag
  end

  def total_type
    all_types = []
    for account in @accounts
      
      all_types << account.type
    end
    return all_types.uniq
  end

  def total_people
    people = []
    for account in @accounts
      people << account.name
    end
    return people
  end

  # def loan_money(bank_account1, bank_account2)
#   def loan_money(hash1, hash2, int)
  #     hash1[:monies] = hash1[:monies] - int
  #     hash2[:monies] = hash2[:monies] + int

  #     return [hash2[:monies], hash1[:monies]]
  #   end



  




end