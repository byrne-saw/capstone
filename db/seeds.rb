User.create!([
  # primary patient id = 1
  {first_name: "Andrew", last_name: "Byrnes", phone_number: "773-885-3893", email: "byrnesaw@gmail.com", doctor: false, admin: false, password: "password", password_confirmation: "password", twilio_number: "+17738853893"},
  # doctors id 2 - 7
  {first_name: "Beverly", last_name: "Crusher", phone_number: "773-885-3893", email: "bev@enterprise.com", doctor: true, admin: false, password: "password", password_confirmation: "password", twilio_number: "+17738853893"},
  {first_name: "Michaela", last_name: "Quinn", phone_number: "773-885-3893", email: "dr.quinn@medicine-woman.com", doctor: true, admin: false, password: "password", password_confirmation: "password", twilio_number: "+17738853893"},
  {first_name: "Gregory", last_name: "House", phone_number: "773-885-3893", email: "dr.house@house.md", doctor: true, admin: false, password: "password", password_confirmation: "password", twilio_number: "+17738853893"},
  {first_name: "Doogie", last_name: "Howser", phone_number: "773-885-3893", email: "teach.me@doogie.com", doctor: true, admin: false, password: "password", password_confirmation: "password", twilio_number: "+17738853893"},
  {first_name: "Livingstone", last_name: "I'Presume", phone_number: "773-885-3893", email: "doclivin@nile.com", doctor: true, admin: false, password: "password", password_confirmation: "password", twilio_number: "+17738853893"},
  {first_name: "Richard", last_name: "Kimble", phone_number: "773-885-3893", email: "gotta@keep-runnin.com", doctor: true, admin: false, password: "password", password_confirmation: "password", twilio_number: "+17738853893"},
  # admins id 8 - 9
  {first_name: "Zero", last_name: "Cool", phone_number: "773-885-3893", email: "zero@cool.com", doctor: false, admin: true, password: "password", password_confirmation: "password", twilio_number: "+17738853893"},
  {first_name: "David", last_name: "Lightman ", phone_number: "773-885-3893", email: "david@wopr.gov", doctor: false, admin: true, password: "password", password_confirmation: "password", twilio_number: "+17738853893"},
  # patients id 10 - 27
  {first_name: "Rosina", last_name: "Deckow", phone_number: "773-885-3893", email: "Rosina.Deckow@strosin.com", doctor: false, admin: false, password: "password", password_confirmation: "password", twilio_number: "+17738853893"},
  {first_name: "Gearldine", last_name: "Vandervort", phone_number: "773-885-3893", email: "Gearldine.Vandervort@schinnergleichner.ca", doctor: false, admin: false, password: "password", password_confirmation: "password", twilio_number: "+17738853893"},
  {first_name: "Tiara", last_name: "Tremblay", phone_number: "773-885-3893", email: "Tiara.Tremblay@will.com", doctor: false, admin: false, password: "password", password_confirmation: "password", twilio_number: "+17738853893"},
  {first_name: "Lala", last_name: "Leffler", phone_number: "773-885-3893", email: "Lala.Leffler@kohler.ca", doctor: false, admin: false, password: "password", password_confirmation: "password", twilio_number: "+17738853893"},
  {first_name: "Henriette", last_name: "Metz", phone_number: "773-885-3893", email: "Henriette.Metz@grady.ca", doctor: false, admin: false, password: "password", password_confirmation: "password", twilio_number: "+17738853893"},
  {first_name: "Estell", last_name: "Wiegand", phone_number: "773-885-3893", email: "Estell.Wiegand@wisoky.ca", doctor: false, admin: false, password: "password", password_confirmation: "password", twilio_number: "+17738853893"},
  {first_name: "Kacey", last_name: "Waelchi", phone_number: "773-885-3893", email: "Kacey.Waelchi@rautorphy.co.uk", doctor: false, admin: false, password: "password", password_confirmation: "password", twilio_number: "+17738853893"},
  {first_name: "Zita", last_name: "Dickinson", phone_number: "773-885-3893", email: "Zita.Dickinson@smithfisher.co.uk", doctor: false, admin: false, password: "password", password_confirmation: "password", twilio_number: "+17738853893"},
  {first_name: "Jennette", last_name: "Langworth", phone_number: "773-885-3893", email: "Jennette.Langworth@swaniawski.com", doctor: false, admin: false, password: "password", password_confirmation: "password", twilio_number: "+17738853893"},
  {first_name: "Savannah", last_name: "Schaden", phone_number: "773-885-3893", email: "Savannah.Schaden@haag.us", doctor: false, admin: false, password: "password", password_confirmation: "password", twilio_number: "+17738853893"},
  {first_name: "Verline", last_name: "Steuber", phone_number: "773-885-3893", email: "Verline.Steuber@botsford.ca", doctor: false, admin: false, password: "password", password_confirmation: "password", twilio_number: "+17738853893"},
  {first_name: "Sandy", last_name: "Treutel", phone_number: "773-885-3893", email: "Sandy.Treutel@osinskigibson.ca", doctor: false, admin: false, password: "password", password_confirmation: "password", twilio_number: "+17738853893"},
  {first_name: "Cesar", last_name: "Friesen", phone_number: "773-885-3893", email: "Cesar.Friesen@mertzbauch.co.uk", doctor: false, admin: false, password: "password", password_confirmation: "password", twilio_number: "+17738853893"},
  {first_name: "Bobby", last_name: "Becker", phone_number: "773-885-3893", email: "Bobby.Becker@mcdermott.ca", doctor: false, admin: false, password: "password", password_confirmation: "password", twilio_number: "+17738853893"},
  {first_name: "Abdul", last_name: "Schaefer", phone_number: "773-885-3893", email: "Abdul.Schaefer@stoltenbergstiedemann.us", doctor: false, admin: false, password: "password", password_confirmation: "password", twilio_number: "+17738853893"},
  {first_name: "Alisa", last_name: "Casper", phone_number: "773-885-3893", email: "Alisa.Casper@wisoky.info", doctor: false, admin: false, password: "password", password_confirmation: "password", twilio_number: "+17738853893"},
  {first_name: "Taylor", last_name: "Corkery", phone_number: "773-885-3893", email: "Taylor.Corkery@hirthe.biz", doctor: false, admin: false, password: "password", password_confirmation: "password", twilio_number: "+17738853893"},
  {first_name: "Dalene", last_name: "Davis", phone_number: "773-885-3893", email: "Dalene.Davis@zemlak.us", doctor: false, admin: false, password: "password", password_confirmation: "password", twilio_number: "+17738853893"}
])

DoctorPatient.create!([
  {doctor_id: 2, patient_id: 1},
  {doctor_id: 2, patient_id: 10},
  {doctor_id: 2, patient_id: 11},
  {doctor_id: 2, patient_id: 12},

  {doctor_id: 3, patient_id: 13},
  {doctor_id: 3, patient_id: 14},
  {doctor_id: 3, patient_id: 15},

  {doctor_id: 4, patient_id: 16},
  {doctor_id: 4, patient_id: 17},
  {doctor_id: 4, patient_id: 18},

  {doctor_id: 5, patient_id: 19},
  {doctor_id: 5, patient_id: 20},
  {doctor_id: 5, patient_id: 21},

  {doctor_id: 6, patient_id: 22},
  {doctor_id: 6, patient_id: 23},
  {doctor_id: 6, patient_id: 24},

  {doctor_id: 7, patient_id: 25},
  {doctor_id: 7, patient_id: 26},
  {doctor_id: 7, patient_id: 27}
])




BloodPressureLog.create!([
  {user_id: 3, log_time: "2018-10-08 22:44:17", systolic: 118, diastolic: 80},
  {user_id: 3, log_time: "2018-10-08 22:44:51", systolic: 119, diastolic: 81},
  {user_id: 3, log_time: "2018-10-08 22:45:21", systolic: 121, diastolic: 82},
  {user_id: 3, log_time: "2018-10-07 20:04:12", systolic: 99, diastolic: 88},
  {user_id: 3, log_time: "2018-11-04 19:16:15", systolic: 55, diastolic: 55},
  {user_id: 3, log_time: "2018-11-04 19:16:36", systolic: 190, diastolic: 190},
  {user_id: 3, log_time: "2018-11-04 19:17:15", systolic: 100, diastolic: 100},
  {user_id: 3, log_time: "2018-11-04 19:17:33", systolic: 8, diastolic: 8},
  {user_id: 3, log_time: "2018-11-04 19:53:53", systolic: 44, diastolic: 55},
  {user_id: 3, log_time: "2018-11-04 19:53:55", systolic: 44, diastolic: 55},
  {user_id: 3, log_time: "2018-11-04 19:54:03", systolic: 5, diastolic: 5},
  {user_id: 3, log_time: "2018-11-04 19:54:12", systolic: 55, diastolic: 55},
  {user_id: 3, log_time: "2018-11-04 19:57:58", systolic: 55, diastolic: 55},
  {user_id: 3, log_time: "2018-11-04 20:18:13", systolic: 99, diastolic: 67},
  {user_id: 3, log_time: "2018-11-06 19:46:00", systolic: 89, diastolic: 100},
  {user_id: 3, log_time: "2018-11-09 02:29:00", systolic: 1, diastolic: 1},
  {user_id: 3, log_time: "2018-10-02 23:04:12", systolic: 99, diastolic: 88},
  {user_id: 11, log_time: "2018-11-11 18:37:00", systolic: 55, diastolic: 67},
  {user_id: 11, log_time: "2018-11-11 18:40:00", systolic: 44, diastolic: 55},
  {user_id: 1, log_time: "2018-11-12 23:25:40", systolic: 180, diastolic: 88},
  {user_id: 1, log_time: "2018-11-12 23:47:18", systolic: 180, diastolic: 90},
  {user_id: 1, log_time: "2018-11-12 23:48:31", systolic: 180, diastolic: 90},
  {user_id: 1, log_time: "2018-11-12 23:52:54", systolic: 180, diastolic: 90},
  {user_id: 1, log_time: "2018-11-12 23:55:27", systolic: 180, diastolic: 88},
  {user_id: 1, log_time: "2018-11-12 23:58:25", systolic: 180, diastolic: 70},
  {user_id: 1, log_time: "2018-11-12 23:59:23", systolic: 190, diastolic: 66},
  {user_id: 3, log_time: "2018-11-13 00:00:00", systolic: 44, diastolic: 44},
  {user_id: 3, log_time: "2018-11-13 00:00:00", systolic: 150, diastolic: 87},
  {user_id: 3, log_time: "2018-11-13 00:00:00", systolic: 89, diastolic: 87}
])


# Notification.create!([
#   {user_id: 8, notify_type: "Blood Pressure", interval: 24, triggered: nil, banner_alerted: nil, sms_text: nil, text_sent: nil, text_at: nil},
#   {user_id: 9, notify_type: "Blood Pressure", interval: 24, triggered: nil, banner_alerted: nil, sms_text: nil, text_sent: nil, text_at: nil}
# ])
