require "active_record"
require "action_view"

$LOAD_PATH.unshift(File.dirname(__FILE__))

require "acts_as_taggable"
require "acts_as_tagger"
require "acts_as_taggable_helper"

require "tagging"
require "tag"

$LOAD_PATH.shift

if defined?(ActiveRecord::Base)
  ActiveRecord::Base.send :include, ActiveRecord::Acts::Taggable
  ActiveRecord::Base.send :include, ActiveRecord::Acts::Tagger
end

if defined?(ActionView::Base)
  ActionView::Base.send :include, ActsAsTaggableHelper
end


