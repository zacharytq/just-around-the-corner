require './config/environment'

use Rack::MethodOverride

use FriendsController
use UsersController
run ApplicationController