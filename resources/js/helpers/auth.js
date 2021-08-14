export function login(credential) {
    return new Promise((res, rej) => {
        axios.post(route('login'), credential)
            .then(result => {
                res(result.data);
            })
            .catch(err => {
                rej(err);
            })
    })
}
export function userProfile() {
    return new Promise((res, rej) => {
        axios.get(route('userProfile'))
            .then(result => {
                res(result.data);
            })
            .catch(err => {
                rej(err);
            })
    })
}
export function register(credential) {
    return new Promise((res, rej) => {
        axios.post(route('register'), credential)
            .then(result => {
                res(result.data);
            })
            .catch(err => {
<<<<<<< HEAD
                rej(err);
=======
                console.log(err.response.data);
                // rej("Wrong email or password");
>>>>>>> 33382f0 (new code)
            })
    })
}

export function currentUser() {
    const user = localStorage.getItem('access_token');

    if (!user) {
        return null;
    }

    return JSON.parse(user);
}