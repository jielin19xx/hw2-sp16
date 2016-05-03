class PagesController < ApplicationController
  def home
    # foo = Foobar.new "baz"
    # @baz = foo.bar :cat, sat: :dat, dat: :sat
  end

  def stringify
    namebox1 = params[:name]
    adjectivebox2 = params[:adjective]
    if namebox1.blank? or adjectivebox2.blank?
      @text = "You are nothing!"
    else
      @text = "#{namebox1} is #{adjectivebox2}"
    end
  end

  def age
  end

  def person
  end
end
