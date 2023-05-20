%dw 2.0
output application/json
---
  customer: payload.customer map ({
    Name: {
      FullName: [$.lastName,$.firstName,$.middleName] filter (!isEmpty($)) joinBy " "
    },
    gender: $.gender,
    DOB: $.DOB
  })




//here we are trying to get the firstname,middlename,lastname together as one under the key Name for that we have mapped the first,middleand last names and by the joinBy function we have combined the name and created seprate object 