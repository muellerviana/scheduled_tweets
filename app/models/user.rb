class User < ApplicationRecord
    has_secure_password 

    validates, :email presence :true, format: {with: /\A[^@\s]+@[^@\s]+\z/} #https://stackoverflow.com/questions/45629459/a-s-s-s-z-meaning/45629773#45629773
end

#--------------------------------------
#There are a number of authentication plug-ins for Rails available. Good ones, such as the popular devise and authlogic, store only encrypted passwords, not plain-text passwords. In Rails 3.1 you can use the built-in has_secure_password method which has similar features.

#---------------------------------------
#Has to do with this: 

#Use Active Model has_secure_password
#gem 'bcrypt', '~> 3.1.7'

#-----------------------------------------