=begin
Problem
------------------------------------------
Given two hashes as arguments, return how many recipes Pete can make based off the first hash

Inputs: 2 hashes, recipe and ingredients
Outputs: Integer

Rules/Requirements
- There are no units
- 

Clarifying Questions
- ingredients not present == 0
- inputs are not blank

Examples, Test Cases
------------------------------------------
({"flour"=>500, "sugar"=>200, "eggs"=>1},{"flour"=>1200, "sugar"=>1200, "eggs"=>5, "milk"=>200})
recipe req --> {"flour"=>500, "sugar"=>200, "eggs"=>1}
available ingredients
{"flour"=>1200, "sugar"=>1200, "eggs"=>5, "milk"=>200}

- all recipes keys must be available in ingredients
- dividing the recipe into ingredients
Data Structure, Algorithm
------------------------------------------
==> Divide the ingredients by the recipe requirements and return smallest value

-- method -->cakes(recipe, ingredients) --> integer
  - iterate through the recipe hash and initialize max_cakes to return value
    - divide the value of the recipe hash by its corresponding ingredients value
    - push result to max cakes
    - push 0 if value not found
  - find minimum value within max cakes

=end

def cakes(recipe, available)
  max_cakes = recipe.map do |ingredient, amount|
    available[ingredient].to_i / amount
  end
  max_cakes.min
end

# def cakes(recipe, available)
#   recipe.collect { |k, v| available[k].to_i / v }.min
# end


p cakes({"flour"=>500, "sugar"=>200, "eggs"=>1},{"flour"=>1200, "sugar"=>1200, "eggs"=>5, "milk"=>200}) == 2
p cakes({"cream"=>200, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>1700, "flour"=>20000, "milk"=>20000, "oil"=>30000, "cream"=>5000}) == 11
p cakes({"apples"=>3, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>500, "flour"=>2000, "milk"=>2000}) == 0
p cakes({"apples"=>3, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>500, "flour"=>2000, "milk"=>2000, "apples"=>15, "oil"=>20}) == 0
p cakes({"eggs"=>4, "flour"=>400},{}) == 0
p cakes({"cream"=>1, "flour"=>3, "sugar"=>1, "milk"=>1, "oil"=>1, "eggs"=>1},{"sugar"=>1, "eggs"=>1, "flour"=>3, "cream"=>1, "oil"=>1, "milk"=>1}) == 1
