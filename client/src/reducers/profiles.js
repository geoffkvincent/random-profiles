import axios from 'axios'
const PROFILES = 'PROFILES'
const ADD_PROFILES = 'ADD_PROFILES'
const UPDATE_PROFILES = 'UODATE_PROFILES'
const DELETE_PROFILES = 'DELETE_PROFILES'

export const getProfiles = () => {
  return (dispatch) => {
    axios.get('/api/profiles')
      .then(res => dispatch)
  }
}