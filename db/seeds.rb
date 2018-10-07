# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# log = BloodPressureLog.new(
#                           user_id: 3,
#                           log_time: "2018-10-07 15:04:12 -0500",
#                           systolic: 120,
#                           diastolic: 80
#                           )
# log.save

# log = BloodPressureLog.new(
#                           user_id: 3,
#                           log_time: "2018-10-06 15:04:12 -0500",
#                           systolic: 125,
#                           diastolic: 85
#                           )
# log.save

# log = BloodPressureLog.new(
#                           user_id: 3,
#                           log_time: "2018-10-05 14:04:12 -0500",
#                           systolic: 130,
#                           diastolic: 82
#                           )
# log.save

# log = BloodPressureLog.new(
#                           user_id: 3,
#                           log_time: "2018-10-04 12:04:12 -0500",
#                           systolic: 142,
#                           diastolic: 90
#                           )
# log.save

# log = BloodPressureLog.new(
#                           user_id: 3,
#                           log_time: "2018-10-03 08:04:12 -0500",
#                           systolic: 130,
#                           diastolic: 87
#                           )
# log.save

# log = BloodPressureLog.new(
#                           user_id: 3,
#                           log_time: "2018-10-02 18:04:12 -0500",
#                           systolic: 132,
#                           diastolic: 91
#                           )
# log.save

# log = BloodPressureLog.new(
#                           user_id: 3,
#                           log_time: "2018-10-01 12:59:12 -0500",
#                           systolic: 119,
#                           diastolic: 79
#                           )
# log.save

# log = BloodPressureLog.new(
#                           user_id: 3,
#                           log_time: "2018-09-30 13:10:12 -0500",
#                           systolic: 121,
#                           diastolic: 81
#                           )
# log.save

patient = DoctorPatient.new(
                            doctor_id: 2,
                            patient_id: 3
                            )
patient.save