import { combineReducers } from 'redux';
import { routerReducer } from 'redux-simple-router';
import session from './session';

export default combineReducers({
  routing: routerReducer,
  session: session,
})
