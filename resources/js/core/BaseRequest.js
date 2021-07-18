import axios from "axios";
import {
    currentUser
} from "../helpers/auth";
const token = currentUser().token;
export default{
    getHeaders(){
        return {
            "Authorization": `Bearer ${token}`,
            "Content-Type": "application/json"
        }
    },
    get(url){
        return axios.get(url, {headers:this.getHeaders()});
    },
    post(url,data) {
        return axios.post(url, data, {
            headers: this.getHeaders()
        });
    }

}
