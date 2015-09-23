# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"


array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================

array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================

p hash[:outer][:inner]['almost'][3]

#============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:

#============================================================

p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.map do |element|
  if element.kind_of?(Array)
    element.map! do |inner|
      p inner += 5
    end
  else
  p element +=5
  end
end

# Bonus:

#startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

=begin

(1) What are some general rules you can apply to nested arrays?

I used comments in the line above my code to label the indices and keys.  That's more of a trick than a general rule.By rules, I suppose you can say:
  [a] accessing an array w/i array uses multiple brackets ([]) side by side like such a[0][2]
  [b] to iterate over a multidimensional array and change it, be sure to be conscious of control flow.  Take care of the innermost arrays first.

(2) What are some ways you can iterate over nested arrays?

I used the usual .each and .map

(3) Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?

I used .kind_of? for the first time and it was necessary to return at a boolean value.

=end