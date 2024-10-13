import { StrictMode } from 'react'
import { createRoot } from 'react-dom/client'
import {BrowserRouter  , Route , Routes} from 'react-router-dom'
import LoginPage from './LoginPage'
import HomePage from './HomePage.jsx'
import './netflix_clone.css'


createRoot(document.getElementById('root')).render(
<>
    <BrowserRouter>
        <Routes>
            <Route path="/" element={<LoginPage/>}/>
            <Route path='/HomePage' element={<HomePage/>} />
        </Routes>
    </BrowserRouter>
</>
)
