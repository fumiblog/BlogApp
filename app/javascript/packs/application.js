// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import "bootstrap"
import "../stylesheets/application"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

require("trix")
require("@rails/actiontext")
require('jquery')
require("chartkick") // 21.2.28追記
require("chart.js") // 21.2.28追記

// require("@rails/ujs").start()
// require("@rails/activestorage").start()
// require("channels")
// require.context('../images', true)
// require("@rails/actiontext")

// import "../stylesheets/reset"
// import "../stylesheets/actiontext"
// import "../stylesheetscustom/"

