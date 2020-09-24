require './config/environment'

use Rack::MethodOverride
### use OtherController1
### use OtherController2
### use OtherController3
use UsersController
run ApplicationController