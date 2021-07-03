import axios from "axios"

// state

export const state = {
    solutions: [],
    solution: {}
}

// getters
export const getters = {
        solutions: state => state.solutions,
        solution: state => state.solution
    }
    // mutation 
export const mutations = {
        FETCH(state, solutions) {
            state.solutions = solutions
        },
        FETCH_ONE(state, solution) {
            state.solution = solution
        }
    }
    // action
export const actions = {
    fetch({ commit }) {
        return axios.get(route('showSolution'))
            .then(res => commit("FETCH", res.data.data))
    },
    fetchOne({ commit }, id) {
        return axios.get(route('showDetailSolution', id))
            .then(res => commit("FETCH_ONE", res.data.data))
    }
}