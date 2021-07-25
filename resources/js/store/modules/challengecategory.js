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
    },
    GET_DATA_TO_HOME(state, challengecategories) {
        state.challengecategories = challengecategories;
    },
    GET_ONE_DATA_TO_OVERVIEW(state, challengecategory) {
        state.challengecategory = challengecategory;
    }
};

// actions
export const actions = {
    fetch({
        commit
    }, page) {
        return axios
            .get(route("challengecategories", {
                page
            }))
            .then(response => commit("FETCH", response.data.data))
    },
    get_All_Data({
        commit
    }) {
        return axios
            .get(route("get_All.challengecategory"))
            .then(response => commit("GET_DATA_TO_HOME", response.data.data))
    },
    fetchOne({
        commit
    }, id) {
        axios
            .get(route("show.challengecategory", id))
            .then(response => commit("FETCH_ONE", response.data.data))
    },
    get_One_Data({
        commit
    }, slug) {
        axios
            .get(route("get_One.challengecategory", slug))
            .then(response => commit("GET_ONE_DATA_TO_OVERVIEW", response.data.data))
    },
    deletechallengecategory({}, id) {
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
