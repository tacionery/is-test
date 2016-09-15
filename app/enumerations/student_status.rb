class StudentStatus < EnumerateIt::Base
  associate_values(
    active: [1, 'Active'],
    inactive: [2, 'Inactive']
  )
end
