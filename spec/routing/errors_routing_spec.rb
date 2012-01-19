require 'spec_helper'

describe ErrorsController do
  specify {
    get('/errors').should route_to(
      :controller => 'errors',
      :action => 'index'
    )
  }
  specify {
    get('/errors/1').should route_to(
      :controller => 'errors',
      :action => 'show',
      :id => '1'
    )
  }
  specify {
    post('/errors').should route_to(
      :controller => 'errors',
      :action => 'create'
    )
  }
  specify {
    delete('/errors/1').should route_to(
      :controller => 'errors',
      :action => 'destroy',
      :id => '1'
    )
  }
end
