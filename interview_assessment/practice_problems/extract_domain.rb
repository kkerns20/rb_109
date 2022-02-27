=begin
Problem
------------------------------------------
Given a URL, return the domain name

Inputs: 1 String
Outputs: 1 string

Rules/Requirements
- 

Clarifying Questions
- 

Examples, Test Cases
------------------------------------------
domain_name("http://github.com/carbonfive/raygun") == "github" 
domain_name("http://www.zombie-bites.com") == "zombie-bites"
domain_name("https://www.cnet.com") == "cnet"

Data Structure, Algorithm
------------------------------------------
Replace http://, https://, and www. with an empty string
split input str on the period and return index 0

=end

def domain_name(url)
  url.gsub!('http://', '')
  url.gsub!('https://', '')
  url.gsub!('www.', '')
  url.split(".")[0]
end

p domain_name("http://github.com/carbonfive/raygun") == "github" 
p domain_name("http://www.zombie-bites.com") == "zombie-bites"
p domain_name("https://www.cnet.com") == "cnet"