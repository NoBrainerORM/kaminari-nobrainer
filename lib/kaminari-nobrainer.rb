require 'nobrainer'
require 'kaminari'

require 'kaminari/models/nobrainer_extension'
require 'kaminari/models/nobrainer_criteria_methods'
NoBrainer::Document.send :include, Kaminari::NoBrainerExtension::Document
