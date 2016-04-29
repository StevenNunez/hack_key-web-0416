class Shortkey < ActiveRecord::Base
  before_save :set_key

  private
  def set_key
    word = get_random_word
    if Shortkey.find_by(key: word)
      set_key
    else
      self.key = word
    end
  end


  def get_random_word
    path =  File.join(Rails.root, 'words')
    File.readlines(path).shuffle.first.chomp
  end
end
