import Header from '../components/header';
import { Outlet, Link } from "react-router-dom";
function Dashboard(){

    return (
        <>
        <Header/>
        <div class="container">
            <div class="row px-3 py-3" >
                <div class="col bg-color-light">
                    <button class="btn bg-primary">
                    <Link to="/addmovie">Add Movie</Link>
                    </button>
                </div>
               
                <div class="col bg-color-light">
                    <button class="btn bg-primary">Review</button>
                </div>
                <div class="col bg-color-light">
                    <button class="btn bg-primary">Add User</button>
                </div>
            </div>

        </div>
        </>
    );
}

export default Dashboard;