require './config/environment'

use Rack::MethodOverride

use GiftsController
use FriendsController
use UsersController
run ApplicationController