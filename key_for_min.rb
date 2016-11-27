# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  return nil if name_hash.length == 0
  invert_hash = name_hash.invert
  until invert_hash.length == 1
    max = invert_hash.max
    invert_hash.delete_if{|k, v| k == max[0]}
  end
  array = invert_hash.first
  return array[1]
end
