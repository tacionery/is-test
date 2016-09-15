
Student.create(name: "Luke Skywalker", register_number: "ABCD123", status: StudentStatus::ACTIVE)
Student.create(name: "Leia Skywalker", register_number: "ABCD111", status: StudentStatus::ACTIVE)
Student.create(name: "Anakin Skywalker", register_number: "ABCD121", status: StudentStatus::INACTIVE)

Course.create(name: "Jedi Academy", description: "The Jedi Master Academy for True Jedis", status: CourseStatus::ACTIVE)
Course.create(name: "Yoda Academy", description: "Master Yoda Jedi Course", status: CourseStatus::INACTIVE)
