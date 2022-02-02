# RB109 Assessment

Review material and notes to prepare for the RB109 Assessment.

## Table of Contents

1. [Variable Scope](./variable_scope.md)
    - [Variables](./variable_scope.md#variables)
    - [Scope](./variable_scope.md#scope)
      - [Global vs Local Scope](./variable_scope.md#global-vs-local-scope)
      - [Inner vs Outer Scope](./variable_scope.md#inner-vs-outer-scope)
    - [Scopes with a Block](./variable_scope.md#scopes-with-a-block)
      - [Variable Shadowing](./variable_scope.md#variable-shadowing)
    - [Scopes with Methods](./variable_scope.md#scopes-with-methods)

2. [Mutating Methods and Object Passing](./mutating_methods_object_passing.md)
    - [Mutating and Non-Mutating Methods](./mutating_methods_object_passing.md#mutating-and-non-mutating-methods)
      - [Non-Mutating Methods](./mutating_methods_object_passing.md#non-mutating-methods)
        - [Variable Assignment](./mutating_methods_object_passing.md#variable-assignment)
      - [Mutating Methods](./mutating_methods_object_passing.md#mutating-methods)
        - [Indexed Assignment](./mutating_methods_object_passing.md#indexed-assignment)
        - [Concatenation](./mutating_methods_object_passing.md#concatenation)
    - [Object Passing](./mutating_methods_object_passing.md#object-passing)
      - [What is Object Passing?](./mutating_methods_object_passing.md#what-is-object-passing)
      - [What happens in Ruby?](./mutating_methods_object_passing.md#what-happens-in-ruby)

3. [Ruby Collections](./working_with_collections.md)
    - [What is a collection?](./working_with_collections.md#what-is-a-collection?)
    - [Element Reference](./working_with_collections.md#element-reference)
        - [String Element Reference](./working_with_collections.md#string-element-reference)
        - [Array Element Reference](./working_with_collections.md#array-element-reference)
        - [Hash Element Reference](./working_with_collections.md#hash-element-reference)
        - [Element Reference Tricks](./working_with_collections.md#element-reference-tricks)
    - [Conversion](./working_with_collections.md#conversion)
    - [Element Assignment](./working_with_collections.md#element-assignment)
        - see also: [Indexed Assignment](mutating_methods_object_passing.md#indexed-assignment)
    - [Iteration](./working_with_collections.md#iteration)
        - [Basic Looping](./working_with_collections.md#basic-looping)
        - [Iterating over Hashes](./working_with_collections.md#iterating-over-hashes)
    - [Selection and Transformation](./working_with_collections.md#selection-and-transformation)
        - [Selection](./working_with_collections.md#selection)
        - [Transformation](./working_with_collections.md#transformation)
        - [Extracting to Methods](./working_with_collections.md#extracting-to-methods)
    - [Sorting](./working_with_collections.md#sorting)
        - [Comparison](./working_with_collections.md#comparison)
    - [Nested Data Structures](./working_with_collections.md#nested-data-structures)
        - [Referencing Collection Elements](./working_with_collections.md#referencing-collection-elements)
        - [Updating Collection Elements](./working_with_collections.md#updating-collection-elements)
        - [Variable Reference in Nested Collections](./working_with_collections.md#variable-reference-in-nested-collections)
        - [Shallow Copy](./working_with_collections.md#shallow-copy)
        - [Freezing Objects](./working_with_collections.md#freezing-objects)

4. [Ruby Collection Methods](./collection_methods.md)
    - [Each, Select, and Map](./collection_methods.md#each-select-and-map)
      - [Each](./collection_methods.md#each)
      - [Select](./collection_methods.md#select)
      - [Map](./collection_methods.md#map)
    - [Enumerable Methods](./collection_methods.md#enumerable-methods)
      - [any?](./collection_methods.md#any)
      - [all?](./collection_methods.md#all)
      - [each_with_index](./collection_methods.md#each_with_index)
      - [each_with_object](./collection_methods.md#each_with_object)
      - [first](./collection_methods.md#first)
      - [include?](./collection_methods.md#include)
      - [partition](./collection_methods.md#partition)
    - [Sorting Methods](./collection_methods.md#sorting-methods)
      - [sort](./collection_methods.md#sort)
      - [sort_by](./collection_methods.md#sort_by)
    - [Comparison Methods](./collection_methods.md#comparison-methods)
      - [min](./collection_methods.md#min)
      - [min_by](./collection_methods.md#min_by)
      - [max](./collection_methods.md#max)
      - [max_by](./collection_methods.md#max_by)
      - [minmax](./collection_methods.md#minmax)
      - [minmax_by](./collection_methods.md#minmax_by)

5. [Variables as Pointers](./variables_pointers.md)
    - [Assignment](./variables_pointers.md#assignment)
    - [Reassignment](./variables_pointers.md#reassignment)
    - [Immutable Objects](./variables_pointers.md#immutable-objects)
    - [Mutable Objects](./variables_pointers.md#mutable-objects)
      - [Setter Methods](./variables_pointers.md#setter-methods)
      - [Mutating Methods](./variables_pointers.md#mutating-methods)
    - [Pointer Arguments](./variables_pointers.md#pointer-arguments)
    - [Equal Values](./variables_pointers.md#equal-values)

6. [Return Values](./return_values.md)
    - [What is a Return Value?](./return_values.md#what-is-a-return-value)
    - [Ruby's Implied Return](./return_values.md#implied-return)
    - [Chaining Methods](./return_values.md#chaining-methods)
    - [Methods as Arguments](./return_values.md#methods-as-arguments)
    - [Output vs. Return](./return_values.md#output-vs-return)
    - [Return Values with Blocks](./return_values.md#return-values-with-blocks)

7. [Truthiness](./truthiness.md)
    - [Booleans](./truthiness.md#booleans)
    - [Truthiness and Falsiness](./truthiness.md#truthiness-and-falsiness)
    - [nil](./truthiness.md#nil)
    - [Truthiness in the Wild](./truthiness.md#truthiness-in-the-wild)

8. [Ruby Methods](./methods.md)
    - [What is a method?](./methods.md#what-is-a-method)
    - [Method Definitions](./methods.md#method-definitions)
    - [Method Invocation](./methods.md#method-invocation)
    - [Arguments vs Parameters](./methods.md#arguments-vs-parameters)

9. [Written Practice Problems](./practice_problems/written_practice_problems.md)

10. Interview Practice Problems
    - Watch Others Code Series Problems
      - [Live Session Part 4: Reverse string](./practice_problems/reverse_str.rb) - 7: 13
      - [Live Session Part 4: FizzBuzz](./practice_problems/fizzbuzz.rb)
      - [Live Session Part 4: Search Inventory](./practice_problems/search_inventory.rb)
      - [Live Session Part 5: Remove Vowels](./practice_problems/remove_vowels.rb) - 3:33
      - [Live Session Part 5: Find Primes](./practice_problems/find_primes.rb)
      - [Live Session Part 5: Balancer](./practice_problems/balancer.rb) - 9:44
      - [Part 1: Repeated Substrings](./practice_problems/repeated_substrings.rb)
      - [Part 1: Common Chars](./practice_problems/common_chars.rb) - 19:44
      - [Part 2: Next Biggest Number](./practice_problems/next_biggest_num.rb) - 20:26
      - [Part 3: Max Sequence](./practice_problems/max_sequence.rb) - 14:40
      - [Part 3: Common Prefix](./practice_problems/common_prefix.rb) - 11:40
      - [Part 4: Substring Test](./practice_problems/woc_substring_test.rb)
      - [Part 4: Scramble](./practice_problems/scramble.rb) - 9:56
      - [Part 5: Longest Palindrome](./practice_problems/longest_palindrome.rb) - 11:10
      - [Part 6: Find Even Index](/practice_problems/find_even_index.rb) - 13:33
      - [Sum same consecutive integers](./practice_problems/sum_consecutive_ints.rb) - 11:41
    - Codewars Problem Solutions
      - [Count letters in string](https://www.codewars.com/kata/5808ff71c7cfa1c6aa00006d/solutions/ruby) - 4:00
      - [Find all pairs](https://www.codewars.com/kata/reviews/5cfa5e532ad4650001e63fe8/groups/60aeacf889308900019475e6) - 7:13
      - [Return substring instance count](https://www.codewars.com/kata/reviews/516f30297c907a79f200067b/groups/60aeafeb8930890001947662) - 8:24
      - [Alphabet symmetry](https://www.codewars.com/kata/reviews/5a0a9754d16cba93d900115b/groups/60aeb458534d1f0001f1149d) - 9:42
      - [Longest vowel chain](https://www.codewars.com/kata/reviews/5a1275d736c5d19eed002742/groups/60aeb640a3a2cf0001e0e99f) - 5:12
      - [Non-even substrings](https://www.codewars.com/kata/reviews/5a0a8ba68e5bf11cfd003b74/groups/60aeb82ea3a2cf0001e0e9d6) - 5:34
      - [Substring fun](https://www.codewars.com/kata/reviews/56ce2da25b477c620000002e/groups/5e03c145884174000112580b) - 5:28
      - [Repeated Substring](https://www.codewars.com/kata/reviews/54f0fce7210f75c03e000084/groups/60aebf9e1a594600010741af) - 18:54
      - [ ] 9. Typoglycemia Generator
      - [ ] 10. Most frequently used words in a text
      - [ ] 11. Extract the domain name from a URL
      - [Detect Pangram](https://www.codewars.com/kata/reviews/5bf0a06ff8c527ebda000a4e/groups/60aed668534d1f0001f1182b) - 4:34
      - [Kebabize](https://www.codewars.com/kata/reviews/57fff6c11bb504ea980000b7/groups/60aedaa8a3a2cf0001e0ee01) - 10:24
      - [Dubstep Song Decoder](https://www.codewars.com/kata/reviews/55936d16a2f51f45be000017/groups/60aedd79534d1f0001f118a1) - 6:18
      - [Take a Ten Minute Walk](https://www.codewars.com/kata/reviews/55162ffa77dd9e7bc1000156/groups/60aedf90aec59d000148041a) - 5:59
      - [Spin Words](https://www.codewars.com/kata/reviews/5270aad4b1aa038d2c000189/groups/60aee1a20b93b600017ea884) - 4:13
      - [Number in Expanded Form](https://www.codewars.com/kata/reviews/58464e0b2435fa35d3000032/groups/60aee4ba534d1f0001f11952) - 10:35
      - [Persistent Bugger](https://www.codewars.com/kata/reviews/55c6bf11fc0d91691700002b/groups/60aee6deb2e7e90001fa39e3) - 6:54
      - [Title Case](https://www.codewars.com/kata/reviews/5202f9e6a402dd033c00002a/groups/60aef048367b2e0001fcabef) - 10:25
      - [Count and group character occurrences](https://www.codewars.com/kata/reviews/543e839381b5fd5833000367/groups/60aef5fc367b2e0001fcac56) - 17:20
      - [Find the Mine](https://www.codewars.com/kata/reviews/528d9fc1be46d19081000640/groups/60b151c65337d70001b122b4) - 8:43
      - [Scramblies](https://www.codewars.com/kata/reviews/55f0b9dc6be0544bd30002d5/groups/60b154d14f44260001527e93) - 4:32
      - [Longest Alphabetical Substring](./practice_problems/cw_longest_alpha_substring.rb)
      - [The Hashtag Generator](https://www.codewars.com/kata/reviews/5412c2f9648162f83100007a/groups/60b15ec34f44260001527fb4) - 6:57
      - [Pete, the baker](https://www.codewars.com/kata/reviews/5d7868df14c1b900011334b7/groups/60b16983d4810c0001f40468) - 23:34
      - [Mean Square Error](https://www.codewars.com/kata/reviews/5e31d087db8fbd00017d6bec/groups/60b16c04d4810c0001f4049e) - 5:10
      - [Exponent Method](https://www.codewars.com/kata/reviews/5251f642dc71af49250002db/groups/60b16dced4810c0001f404d4) - 3:42
      - [Where my anagrams?](https://www.codewars.com/kata/reviews/523b40a5ad90113c2b00000f/groups/60b16f94963b480001b0d537)
      - [Split String](https://www.codewars.com/kata/reviews/516f30267c907a79f2000466/groups/60b17190d4810c0001f40545) - 6:51
      - [ ] 30. Anagram Difference
      - [Anagram Detection](https://www.codewars.com/kata/reviews/54ff7a98bae8cd4b6e0003ca/groups/60b672135e3f1d0001d841a9) - 7:34
      - [Highest Scoring Word](./practice_problems/highest_scoring_word.rb) - 12:19
      - [Replace with Alphabet Position](./practice_problems/replace)_alpha_position.rb) - 5:37
      - [Sherlock on pockets](./practice_problems/sherlock_pockets.rb) - 14:30
      - [Mexican Wave](./practice_problems/mexican_wave.rb) - 7:49
      - [Delete Digit](./practice_problems/delete_digit.rb) - 7:13
      - [Multiples Sum](./practice_problems/multiples_sum.rb) - 8:18
      - [Largest Product](./practice_problems/largest_product.rb) - 16:18
      - [Duplicate Encoder](./practice_problems/duplicate_encoder.rb) - 4:43
      - [Backspaces in a String](./practice_problems/backspaces_string.rb)
      - [Transform to Prime](./practice_problems/transform_prime.rb) - 11:56
      - [Count Duplicates](./practice_problems/count_duplicates.rb) - 4:03
      - [Alphabetized](./practice_problems/alphabetized.rb) - 5:25
      - [Digital Root](./practice_problems/digital_root.rb) - 4:07
      - [Array Diff](./practice_problems/array_diff.rb) - 6:34
      - [Find Children](./practice_problems/find_children.rb) - 10:42
      - [Playing with Digits](./practice_problems/playing_digits.rb) - 11:06
      - [Equal Sides of an Array](./practice_problems/equal_sides_array.rb) - 5:46
      - [Reverse or Rotate?](./practice_problems/rev_rot.rb) - 33:52
      - [Decipher This!](./practice_problems/decipher.rb) - 14:39
      - [Bouncing Balls](./practice_problems/bouncing_balls.rb) - 11:51
      - [Squared Arrays](./practice_problems/squared_arrays.rb) - 11:55
      - [Grouping and Counting](./practice_problems/group_count.rb) - 5:25
      - [Find the Nexus](./practice_problems/find_nexus.rb) - 12:33
      - [Triple Trouble](./practice_problems/triple_double.rb) - 13:08
      - [Which Are In?](./practice_problems/which_are_in.rb) - 8:00
    - SPOT & Study Group Problems
      - [Count the number of duplicates](./practice_problems/spot_count_dups.rb)
      - [Odd Integer Substrings](./practice_problems/spot_odd_int_strings.rb)
      - [Substrings Hash](./practice_problems/substrings_hash.rb)
      - [Forward/Backward Strings](./practice_problems/forward_backward_strings.rb)
      - [Min Subarray Sum](./practice_problems/min_subarr_sum.rb)
      - [Balanced Parenthesis](./practice_problems/balanced_parenthesis.rb)
      - [Find the Peaks](./practice_problems/find_peaks.rb)
      - [Ideal Distances Travel](./practice_problems/best_travel.rb) - 24:51
      - [Max Sums](./practice_problems/max_sums.rb) - 9:35
      - [Rotate 13](./practice_problems/rot13.rb) - 17:35
      - [Jumbled Strings](./practice_problems/jumbled_str.rb)
      - [Unique in Order](./practice_problems/unique_order.rb)
      - [Simple Pig Latin](./practice_problems/pig_latin.rb)
      - [Range Extraction](./practice_problems/range_extraction.rb)
      - [Decode Tongues](./practice_problems/decode_tongues.rb) - 20:03

## To-Do

- [] Flashcards for "key concepts" behind every point in Table of Contents
- [] Create collection space for explanation of "useful methods", generate my own examples for each.
- [] Create local variable scope document
- [] Create mutating vs non-mutating methods document
- [] Create pass-by-reference vs pass-by-value document (within mutating vs non-mutating methods)
- [] Create document for working with collections
  - [] Element reference
  - [] Conversion
  - [] Element assignment
  - [] Iteration
  - [] Transformation and Selection
  - [] Sorting
  - [] Nested Data Structures
- [] Create document for popular collection methods
- [] Create document for variables as pointers
- [] Create document for puts vs return
- [] Create document for false vs nil and "truthiness"
- [] Create document for method definition and method invocation
- [] Create document for implicit return value of method invocation and blocks
- [] Link documents together by creating links in interrelated sections
- [] Create a Table of Contents, here, so all aspects of the study guide can be easily accessed.
- [] Collect number of code snippets and write out my own explanation of what is happening within each (single document)
- [] Create some "practice tests" that I can use for timed practice
- [] Take timed practice test