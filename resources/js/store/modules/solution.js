import axios from "axios"

// state

export const state = {
    solutions: [],
    solution: {},
    all:[]
}

// getters
export const getters = {
        solutions: state => state.solutions,
        solution: state => state.solution,
        all: state => state.all,
    }
    // mutation 
export const mutations = {
        FETCH(state, solutions) {
            state.solutions = solutions
        },
        ALL(state, all) {
            state.all = all
        },
        FETCH_ONE(state, solution) {
            state.solution = solution
        }
    }
    // action
export const actions = {
    fetch({ commit }) {
        return axios.get(route('solutions'))
            .then(res => commit("FETCH", res.data.data))
    },
    all({ commit }) {
        return axios.get(route('all.solution'))
            .then(res => commit("ALL", res.data.data))
    },
    fetchOne({ commit }, id) {
        return axios.get(route('show.solution', id))
            .then(res => commit("FETCH_ONE", res.data.data))
    },
    deleteSolution({}, id) {
        axios
          .delete(route("delete.solution", id))
          .then((response)=> {
            // this.dispatch("solution/fetch")
            if(response.data.status == 'success'){
            Swal.fire(
              'Deleted!',
              'Solution deleted successfully',
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
      editSolution({}, data) {
        axios
          .post(route("update.solution", data.get('id')),data)
          .then()
      },
      addSolution({}, data) {
        axios
          .post(route("create.solution"), data)
          .then()
      }
}