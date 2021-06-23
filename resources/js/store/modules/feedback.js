import axios from 'axios'
export const state = {
    feedbacks: []
}
export const getters = {
    feedbacks: state => state.feedbacks
}
export const mutations = {
    FETCH(state, feedbacks) {
        state.feedbacks = feedbacks
    }
}

export const actions = {
    fetch({ commit }) {
        return axios.get(route("feedbacks"))
            .then(res => commit("FETCH", res.data.data))
    }
}