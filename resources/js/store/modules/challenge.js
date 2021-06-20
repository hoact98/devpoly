import axios from "axios";

// state
export const state = {
    challenges: [],
    challenge: {}
};

// getters
export const getters = {
    challenge: state => state.challenge,
    challenges: state => state.challenges
};

// mutations
export const mutations = {
    FETCH(state, challenges) {
        state.challenges = challenges;
    },
    FETCH_ONE(state, challenge) {
        state.challenge = challenge;
    }
};

// actions
export const actions = {
    fetch({ commit }) {
        return axios
            .get(route("challenges"))
            .then(response => commit("FETCH", response.data.data))
    },
    fetchOne({ commit }, id) {
        axios
            .get(route("show.challenge", id))
            .then(response => commit("FETCH_ONE", response.data.data))
    },
    deletechallenge({}, id) {
        axios
            .delete(route("delete.challenge", id))
            .then((response) => {
                this.dispatch("challenge/fetch")
                if (response.data.status == 'success') {
                    Swal.fire(
                        'Deleted!',
                        'challenge deleted successfully',
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
    editchallenge({}, data) {
        axios
            .post(route("update.challenge", data.get('id')), data)
            .then()
    },
    addchallenge({}, data) {
        axios
            .post(route("create.challenge"), data)
            .then()
    }
};