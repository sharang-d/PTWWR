require './my_middleware'
use My_Middleware
run ->(env){[200, {'Content-Type' => 'text/plain'}, ['OK']]}
