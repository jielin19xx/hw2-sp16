class PagesController < ApplicationController
  def home
     foo = Foobar.new "baz"
     @baz = foo.bar :cat, sat: :dat, dat: :sat
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
    p_name = params[:name]
    p_age = params[:age]
    p1 = Person.new params[:name], params[:age]
    p_birth_year = p1.birth_year
    p_nickname = p1.nickname
    @text3 = "Your name is #{p_name}. Your age is #{p_age}. Your birth year is #{p_birth_year}. Your nickname is #{p_nickname}"
  end
end
