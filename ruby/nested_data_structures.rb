#
# nested data structure exercise
#
homestead = {
  house: {
    pretty_name: 'House',
    to_dos: [
      { owner: 'painters',task: "paint house" }
    ],
    kitchen: {
      pretty_name: "kitchen",
      to_dos: [
        {owner: 'dad',task: "put up dirty dishes"},
        {owner: 'dad',task: "put up clean dishes"}
      ]

    },
    master_bedroom: {

    },
    guest_bedroom:{

    },
    garage: {

    },
  },
  yard: {
    pretty_name: 'yard',
    to_dos: [
      { owner: 'lawn care folks', task: "mow yard"},
      { owner: 'lawn care folks', task: "edge"},
      { owner: 'dad',task: "trim trees and bushes"}
    ]
  },
  pool: {
    pretty_name: 'pool',
    to_dos: [
      { owner: 'dad', task: "brush"},
      { owner: 'dad', task: "empty leaves"},
      { owner: 'dad', task: "chemicals"}
    ]
  },
  cars: {
    dads_car:{
      pretty_name: "Dad's Honda Pilot",
      to_dos: [
      ]
    },
    moms_car: {
      pretty_name: "Mom's Honda Odessy",
      to_dos: [
      ]
    },
    zacs_car:{
      pretty_name: "Zac's Ford Expedition",
      to_dos: [
      ]
    }
  }
}
# p homestead