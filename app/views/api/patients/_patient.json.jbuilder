json.id patient.id
json.first_name patient.first_name
json.last_name patient.last_name
json.phone_number patient.phone_number
json.email patient.email
json.created_at patient.created_at
# json.doctor3 patient.doctors

# json.formated do
#   if admin
#     patient.doctor_first_name
#     patient.doctor_last_name
#   else
#     json.doctor_first_name patient.doctors.pluck(:first_name)[0]
#     json.doctor_last_name patient.doctors.pluck(:last_name)[0]
#   end
# end

# json.doctor_first_name patient.doctors.pluck(:first_name)[0] || patient.doctor_first_name
# json.doctor_last_name patient.doctors.pluck(:last_name)[0] || patient.doctor_last_name

json.doctor_first_name patient.doctor_first_name
json.doctor_last_name patient.doctor_last_name