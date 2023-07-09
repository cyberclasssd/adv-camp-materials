#an e of 3 is pretty small! take the cube root of the ciphertext with the code below. Just remove the hashtags in front of the code and replace the ciphertext with the correct value. Remember to convert to hex and then ASCII!

def find_invpow(x,n):
    #A helpful function that finds the nth root of x.
    
    high = 1
    while high ** n < x:
        high *= 2
    low = high//2
    while low < high:
        mid = (low + high) // 2
        if low < mid and mid**n < x:
            low = mid
        elif high > mid and mid**n > x:
            high = mid
        else:
            return mid
    return mid + 1

#c = 
e = 3

#print(find_invpow(c, e))

num = 120983
find_invpow(num, 3)
