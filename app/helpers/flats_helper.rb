module FlatsHelper
  def select_options(options)
    select_options = options.map do |option|
      [option.humanize, option]
    end
  end
end