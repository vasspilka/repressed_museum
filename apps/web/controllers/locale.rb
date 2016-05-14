module Web
  module Locale
    def self.included(action)
      action.class_eval do
        expose :locale
      end
    end

    private

    def locale
      @locale = YAML.load_file('./config/i18n.yaml')[(session["locale"] || :gr ).to_s]
    end

  end
end
