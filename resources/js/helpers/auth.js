export function login(credential) {
    return new Promise((res, rej) => {
        axios.post('api/login', credential)
            .then(result => {
                res(result.data);
            })
            .catch(err => {
                rej("Wrong email or password");
            })
    })
}

export function register(credential) {
    return new Promise((res, rej) => {
        axios.post('api/register', credential)
            .then(result => {
                res(result.data);
            })
            .catch(err => {
                rej("Wrong email or password");
            })
    })
}

export function currentUser() {
    const user = localStorage.getItem('user');

    if (!user) {
        return null;
    }

    return JSON.parse(user);
}
