export function Pork(){
    const [buttonPopup, setButtonPopup] = useState(false); 
        return(
        <>
        
    <div className="Food-Container">
    <div><button className="back-btn"><Link to="/menu"><IoMdArrowRoundBack/></Link></button></div>
        <h1>Pork Menu</h1>
        <li className="Food-Card-Menu" >
                <img src="/" alt=""onClick={() => setButtonPopup(true)} />
                <p className="Food-name">name</p>
                <Popup trigger={buttonPopup} setTrigger ={setButtonPopup}>
                    <h3>hello world</h3>
                </Popup>
            </li>
        <ul >
            
        </ul>
    </div>  
        </>
        );
    }