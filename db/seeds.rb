User.create!([
  {first_name: "Larry", last_name: "David", phone_number: "773-885-3893", email: "larry@jokes.com", doctor: false, admin: false, password: "password", password_confirmation: "password"},
  {first_name: "Andrew", last_name: "Byrnes", phone_number: "773-885-3893", email: "byrnesaw@gmail.com", doctor: false, admin: true, password: "password", password_confirmation: "password"},
  {first_name: "Gregory", last_name: "House", phone_number: "555-555-5555", email: "dr.house@house.com", doctor: true, admin: false, password: "password", password_confirmation: "password"
])

DoctorPatient.create!([
  {doctor_id: 2, patient_id: 3}
])

BloodPressureLog.create!([
  {user_id: 1, log_time: "2018-10-02 23:04:12", systolic: 132, diastolic: 91},
  {user_id: 1, log_time: "2018-10-01 17:59:12", systolic: 119, diastolic: 79},
  {user_id: 1, log_time: "2018-09-30 18:10:12", systolic: 121, diastolic: 81},
  {user_id: 1, log_time: "2018-10-08 22:44:17", systolic: 118, diastolic: 80},
  {user_id: 1, log_time: "2018-10-08 22:44:51", systolic: 119, diastolic: 81},
  {user_id: 1, log_time: "2018-10-08 22:45:21", systolic: 121, diastolic: 82},
  {user_id: 1, log_time: "2018-10-07 20:04:12", systolic: 99, diastolic: 88},
  {user_id: 1, log_time: "2018-11-04 19:16:15", systolic: 55, diastolic: 55},
  {user_id: 1, log_time: "2018-11-04 19:16:36", systolic: 190, diastolic: 190},
  {user_id: 1, log_time: "2018-11-04 19:17:15", systolic: 100, diastolic: 100},
  {user_id: 1, log_time: "2018-11-04 19:17:33", systolic: 8, diastolic: 8},
  {user_id: 1, log_time: "2018-11-04 19:53:53", systolic: 44, diastolic: 55},
  {user_id: 1, log_time: "2018-11-04 19:53:55", systolic: 44, diastolic: 55},
  {user_id: 1, log_time: "2018-11-04 19:54:03", systolic: 5, diastolic: 5},
  {user_id: 1, log_time: "2018-11-04 19:54:12", systolic: 55, diastolic: 55},
  {user_id: 1, log_time: "2018-11-04 19:57:58", systolic: 55, diastolic: 55},
  {user_id: 1, log_time: "2018-11-04 20:14:35", systolic: 44, diastolic: 44},
  {user_id: 1, log_time: "2018-11-04 20:15:17", systolic: 55, diastolic: 44},
  {user_id: 1, log_time: "2018-11-04 20:16:45", systolic: 78, diastolic: 34},
  {user_id: 1, log_time: "2018-11-04 20:18:13", systolic: 99, diastolic: 67},
  {user_id: 1, log_time: "2018-11-04 20:22:08", systolic: 55, diastolic: 67},
  {user_id: 1, log_time: "2018-11-04 20:22:15", systolic: 89, diastolic: 34},
  {user_id: 1, log_time: "2018-11-04 20:23:26", systolic: 101, diastolic: 84},
  {user_id: 1, log_time: "2018-11-05 19:44:00", systolic: 77, diastolic: 88},
  {user_id: 1, log_time: "2018-11-05 20:36:00", systolic: 77, diastolic: 89},
  {user_id: 1, log_time: "2018-11-05 20:53:00", systolic: 78, diastolic: 44},
  {user_id: 1, log_time: "2018-11-05 22:28:00", systolic: 89, diastolic: 87},
  {user_id: 1, log_time: "2018-11-06 19:46:00", systolic: 89, diastolic: 100},
  {user_id: 1, log_time: "2018-11-09 02:29:00", systolic: 1, diastolic: 1},
])

