import axios from "axios";

// state
export const state = {
    mentors: [],
    mentor: {}
};

// getters
export const getters = {
    mentor: state => state.mentor,
    mentors: state => state.mentors
};

// mutations
export const mutations = {
    FETCH(state, mentors) {
        state.mentors = mentors;
    },
    FETCH_ONE(state, mentor) {
        state.mentor = mentor;
    }
};

// actions
export const actions = {
    fetch({
        commit
    }, page) {
        return axios
            .get(route("mentors", {
                page
            }))
            .then(response => commit("FETCH",response.data.data))
    },
    fetchOne({
        commit
    }, id) {
        axios
            .get(route("getOne.mentor", id))
            .then(response => commit("FETCH_ONE", response.data.data.user))
    },
    deleteMentor({}, id) {
        axios
            .delete(route("delete.user", id))
            .then((response) => {
                this.dispatch("mentor/fetch")
                if (response.data.status == 'success') {
                    Swal.fire(
                        'Deleted!',
                        'Mentor deleted successfully',
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
};
