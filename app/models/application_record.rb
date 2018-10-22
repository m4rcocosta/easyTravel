class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  require 'open_weather'

    options = { units: "metric", APPID: "07a22ac8fa1aeeedcfec8bc055cbe3eb" }
    
end
