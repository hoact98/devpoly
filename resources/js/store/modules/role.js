import axios from "axios";

// state
export const state = {
  roles: [],
  role: {}
};

// getters
export const getters = {
  role: state => state.role,
  roles: state => state.roles
};

// mutations
export const mutations = {
  FETCH(state, roles) {
    state.roles = roles;
  },
  FETCH_ONE(state, role) {
    state.role = role;
  }
};

// actions
export const actions = {
  fetch({ commit }) {
    return axios
      .get(route("roles"))
      .then(response => commit("FETCH", response.data.data))
      .catch();
  },
  fetchOne({ commit }, id) {
    axios
      .get(route("show.role", id))
      .then(response => commit("FETCH_ONE", response.data.data))
      .catch();
  },
  deleteRole({}, id) {
    axios
      .delete(route("delete.role", id))
      .then((response)=> {
        this.dispatch("role/fetch")
        if(response.data.status == 'success'){
        Swal.fire(
          'Deleted!',
          'Role deleted successfully',
          'success'
        )
        }

    }).catch(() => {
        Swal.fire({
          icon: 'error',
          title: 'Oops...',
          text: 'Something went wrong!',
        })
    })
  },
  editRole({}, data) {
    axios
      .post(route("update.role", data.get('id')),data)
      .then()
  },
  addRole({}, data) {
    axios
      .post(route("create.role"), data)
      .then()
  }
};
