require File.join(File.dirname(__FILE__), '..', 'lib', 'more')

config.after_initialize {
  if Less::More::DEFAULTS[RAILS_ENV][:clean_and_parse_after_initialize]
    Less::More.clean
    Less::More.parse if Less::More.page_cache?
  end
}