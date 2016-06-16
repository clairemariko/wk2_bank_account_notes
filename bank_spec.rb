require ('minitest/autorun')
require_relative ('bank_account_val')
require_relative('bank')


class TestBank < MiniTest::Test

def setup
  bank_account1 = BankAccount.new('Jay', 5000, 'business')
  bank_account2 = BankAccount.new('Rick', 1, 'personal')
  bank_account3 = BankAccount.new('Tony', 20, 'saving')
  bank_account4 = BankAccount.new('Claire', 30, 'saving')


  bank_accounts = [ bank_account1, bank_account2, bank_account3, bank_account4 ]

  @bank = Bank.new(bank_accounts)
end

def test_bank_initial_state
assert_equal(4, @bank.number_of_accounts)

end

# def test_bank_total_cash
#   assert_equal(5021, @bank.total_cash)
# end

def test_total_type
  assert_equal(["business", "personal","saving" ], @bank.total_type)
end

def test_total_people
  assert_equal(["Jay","Rick","Tony","Claire"], @bank.total_people)
end

def test_loan_money
  assert_equal(101, @bank.loan_money)
end


end