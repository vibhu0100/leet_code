# @param {String} s
# @return {Boolean}
def is_valid(s)
  array = s.split('')
  a = []
  convert = {'('=>')','['=>']','{'=>'}'}
  count = 0
  array.each do |x|
    if ['{','(','['].include? x
        a.push convert[x]
        #puts a
    elsif [')','}',']'].include? x
        count = count + 1
        if a.last == x
            a.pop
            count = count - 1
        end
    end
  end
  if a.empty? && count == 0
      return true
  else
      return false
  end
end
