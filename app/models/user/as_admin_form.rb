# This is an example of how the namespacing is getting pulled apart
# and translated to folders (or vice-versa).  In Ruby, the :: symbol 
# defines a namespacing scope, so the User::AsAdminForm is a declaration
# that defines an AsAdminForm class which happens to exist within the 
# User namespace.  When Rails looks for the file that this declaration is in,
# it splits the name of the class by the namespace symbol and looks for
# a folder of the same names.  
#
# As with other file name conventions, Rails will lowercase and 
# preface capped letters with an underscore.
#
# Thus, this model file is in app/models/users/as_admin_form.rb.
#
# If you wanted, you could keep going with this:
#   class BackEndModels::User::AsAdminForm < ApplicationRecord
# would be found in
#   app/models/back_end_models/user/as_admin_form.rb
#
# I've never seen a nesting of this level though...Rails in general doesn't
# like you to use more than one level of nesting.
#
# This can be a little confusing because the namespacing we're doing feels
# a lot like we're deriving an AsAdminForm class from the User class, but
# that's not what's happening.  The AsAdminForm is a class that inherits
# from ApplicationRecord...it really has no notion of the User class.  
# You just have to remember that there is a User model AND there is User namespace
# but there's no relationship between them.  In Rails, this is less of a problem
# than you might expect because the top level User model sits in the app/models
# folder it's clear from the app/models/user folder that there are additional
# User-related classes in there.

class User::AsAdminForm < ApplicationRecord

  # some functions here that work on User objects when doing admin stuff

  # this keeps the admin-focused functions out of the main user.rb file
end
