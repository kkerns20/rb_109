=begin
Problem
------------------------------------------


Inputs: 1 integer and 2 floats
Outputs: 1 integer

Rules/Requirements
- h must be greater than 0
- bounce must be between 0 and 1
- window ust be < h

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------


Data Structure, Algorithm
------------------------------------------
- Return -1 if:
  - height is less than 1
  - bounce is greater than 0 or less than 1
  - window is greater than height
- Set a counter to 1
- Iterate a loop
  - Reassign height to height * bounce
  - break the loop if heigh is less than window
  - increment counter by 2
- Return the counter
=end

def valid_expirament?(height, bounce, window)
  height > 0 && bounce > 0 && bounce < 1 && window < height
end

def bouncingBall(height, bounce, window)
  return -1 unless valid_expirament?(height, bounce, window)
  
  counter = 1
  loop do
    height *= bounce
    break if height <= window
    counter += 2
  end
  
  counter
end

p bouncingBall(3, 0.66, 1.5) == 3
p bouncingBall(30, 0.66, 1.5) == 15
p bouncingBall(30, 0.75, 1.5) == 21
p bouncingBall(30, 0.4, 10) == 3
p bouncingBall(40, 1, 10) == -1
p bouncingBall(-5, 0.66, 1.5) == -1
p bouncingBall(1, 0.66, 0.66) == 1
p bouncingBall(1, 0.66, 1) == -1
