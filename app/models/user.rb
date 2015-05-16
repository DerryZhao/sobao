class User < ActiveRecord::Base
  attr_reader :password

  def password=(pwd)
    @password = pwd
    return if pwd.blank?
    self.passwd = User.encrypted_password(password)
  end

  def self.authenticate(name, password)
    user = User.find_by_name(name)
    if user
      expected_password = encrypted_password(password)
      if user.passwd == expected_password
        return user.id
      else
        return  nil
      end
    else
      return nil
    end
  end

  private

  def self.encrypted_password(passwd)
    string_to_hash = passwd + 'wibble'
    Digest::SHA1.hexdigest(string_to_hash)
  end

end
