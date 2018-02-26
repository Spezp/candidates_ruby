# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

def find(id)
  puts id
  @candidates.each do |c|
    if c[:id] == id
      puts c
      return c
    end
  end
end

def experienced?(candidate)
  if candidate[:years_of_experience] >= 2
    true
  elsif candidate[:years_of_experience] < 2
    false
  end
end

def has_github_points?(candidate)
  if candidate[:github_points] > 100
    true
  elsif
    false
  end
end

def recently_applied?(candidate)
date_applied = candidate[:date_applied]
  if date_applied > 15.days.ago.to_date
    true
  else
    false
  end
end

def qualified_candidates(candidates)
  qaulified_array = []
  candidates.each do |c|
    if experienced?(c) && has_github_points?(c) && recently_applied?(c) && c[:age] >= 18
      qaulified_array.push(c)
    end
  end
  qaulified_array
end

def ordered_by_qualifications(candidates)
  sorted_candidates = candidates.sort do |a,b|
    comp = (b[:years_of_experience] <=> a[:years_of_experience])
    comp.zero? ? ( b[:github_points]<=> a[:github_points] ) : comp
  end
  sorted_candidates
end

# More methods will go below
