class CourseStatus < EnumerateIt::Base
  associate_values active: 1, inactive: 2
end
