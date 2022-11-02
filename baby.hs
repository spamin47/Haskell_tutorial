doubleMe x = x + x
doubleUs x y = doubleMe x + doubleMe y
return2plus2 = 2 + 4

doubleSmallNumber x = if x > 100
    then x
    else x*2