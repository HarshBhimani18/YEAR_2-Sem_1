import { Link, useNavigate } from "react-router-dom"
// import HomePage from "./HomePage";


function LoginPage() {
    const navigate = useNavigate();
    return (
        <>
            <div id="img-view" className="container-fluid">
                <div id="login-info">
                    
                    <div class="mb-3">
                        <label for="formGroupExampleInput" class="form-label"><h4>Name</h4></label>
                        <input type="text" style={{width:'300px'}} class="form-control" id="formGroupExampleInput" placeholder="Enter Name" />
                    </div>
                    <div class="mb-3">
                        <label for="formGroupExampleInput2" class="form-label"><h4>Email</h4></label>
                        <input type="email" style={{width:'300px'}} class="form-control" id="formGroupExampleInput2" placeholder="Enter Email Address" />
                    </div>
                    <div class="mb-3">
                        <label for="formGroupExampleInput2" class="form-label"><h4>Password</h4></label>
                        <input type="password" style={{width:'300px'}} class="form-control" id="formGroupExampleInput2" placeholder="Enter Password" />
                    </div>

                    <button type="button" class="btn btn-danger" onClick={()=>{
                        navigate('/HomePage')
                    }}>Sign in</button>
                </div>
            </div>
        </>
    )
}

export default LoginPage