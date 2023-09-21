# DESCRIPTION:
# Given two Arrays in which values are the power of each soldier, return true if you survive the attack or false if you perish.

# CONDITIONS

# Each soldier attacks the opposing soldier in the same index of the array. The survivor is the number with the highest value.
# If the value is the same they both perish
# If one of the values is empty(different array lengths) the non-empty value soldier survives.
# To survive the defending side must have more survivors than the attacking side.
# In case there are the same number of survivors in both sides, the winner is the team with the highest initial attack power. If the total attack power of both sides is the same return true.
# The initial attack power is the sum of all the values in each array.
# EXAMPLES

# attackers=[ 1, 3, 5, 7 ]   defenders=[ 2, 4, 6, 8 ]
# 0 survivors                4 survivors
# return true


# attackers=[ 1, 3, 5, 7 ]   defenders=[ 2, 4 ]
# 2 survivors  (16 damage)   2 survivors (6 damage)
# return false

# attackers=[ 1, 3, 5, 7 ]   defenders=[ 2, 4, 0, 8 ]
# 1 survivors                3 survivors
# return true



'''
Time Complexity

Overall: O(n)
def check_surv(alist, alist2):
    def_surv = 0 -> O(1)
    atk_surv = 0 -> O(1)
    atk_power = sum(alist) -> O(1) O(n)
    def_power = sum(alist2) -> O(1) O(n)
    compare_list = list(zip_longest(alist ,alist2)) -> O(1) zip = O(2n) O(n) = O(n)
    for atk, def_ in compare_list: -> O(n)
        if def_ is None: -> O(1)
            atk_surv += 1 -> O(1)
            continue -> O(1)
        elif atk is None: -> O(1)
            def_surv += 1 -> O(1)
            continue -> O(1)
        if atk > def_: -> O(1)
            atk_surv += 1 -> O(1)
        elif atk < def_: -> O(1)
            def_surv += 1 -> O(1)
    if atk_surv > def_surv: -> O(1)
        return False -> O(1)
    elif def_surv > atk_surv: -> O(1)
        return True -> O(1)
    elif atk_surv == def_surv: -> O(1)
        if atk_power > def_power: -> O(1)
            return False -> O(1)
        else: -> O(1)
            return True -> O(1)
'''





