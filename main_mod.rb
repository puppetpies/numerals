
module Roman extend self

  # Numerals and values
  M = 1000 
  D = 500
  C = 100 
  L = 50
  XII = 12
  XI = 11 
  X = 10
  IX = 9
  VIII = 8
  VII = 7
  VI = 6
  V = 5
  IV = 4
  IIII = 4 # Alternate
  III = 3
  II = 2
  I = 1
  
  def convert(numeral)
    res = 0
    res2 = Array.new
    t = numeral.split('') # Each Character
    t.each {|n|
      res2[res] = Roman.const_get(n) # Get values of the constants
      res += 1
    }
    # Perform Addition
    s = 0
    res2.each {|n|
      s += n
    }
    return s
  end
  
end

include Roman

r = convert("MMXX")
s = convert("MMXX")
p r - s
p r
p r.class
