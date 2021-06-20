import axios from "axios";

// state
export const state = {
    challengecategories: [],
    challengecategory: {}
};

// getters
export const getters = {
    challengecategory: state => state.challengecategory,
    challengecategories: state => state.challengecategories
};

// mutations
export const mutations = {
    FETCH(state, challengecategories) {
        state.challengecategories = challengecategories;
    },
    FETCH_ONE(state, challengecategory) {
        state.challengecategory = challengecategory;
    }
};

// actions
export const actions = {
    fetch({ commit }) {
        return axios
            .get(route("challengecategories"))
            .then(response => commit("FETCH", response.data.data))
    },
    fetchOne({ commit }, id) {
        axios
            .get(route("show.challengecategory", id))
            .then(response => commit("FETCH_ONE", response.data.data))
    },
    deletechallengecategory({}, id) {
        console.log(id);
        axios
            .delete(route("delete.challengecategory", id))
            .then((response) => {
                this.dispatch("challengecategory/fetch")
                if (response.data.status == 'success') {
                    Swal.fire(
                        'Deleted!',
                        'challengecategory deleted successfully',
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
    editchallengecategory({}, data) {
        axios
            .post(route("update.challengecategory", data.get('id')), data)
            .then()
    },
    addChallengeCategory({}, data) {
        axios
            .post(route("create.challengecategory"), data)
            .then()
    }
};