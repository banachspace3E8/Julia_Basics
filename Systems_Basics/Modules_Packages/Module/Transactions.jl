#Shishir Khanal
#01/20/2022
#Transactions module in Julia
#-----------------------

module Transaction

using BankModule, CustomerModule

export deposit, withdraw

function deposit(cust::Customer, bank::Bank, amount::Float64)
    if cust.cash ≥ amount
        cust.cash -= amount
        cust.bankdeposit += amount
        bank.cash += amount
        bank.totalDeposit += amount
    else
        println("Not enough cash to deposit this amount!")
    end
end

function withdraw(cust::Customer, bank::Bank, amount::Float64)
    if bank.cash ≥ amount
        if cust.bankdeposit ≥ amount
            bank.cash -= amount
            bank.totalDeposit -= amount
            cust.cash += amount
            cust.bankdeposit -= amount
        else
            println("You don't have that amount in your deposit account!")
        end  
    else
        println("Not enough cash in our vaults. Sorry!")
    end
end

end #end of module