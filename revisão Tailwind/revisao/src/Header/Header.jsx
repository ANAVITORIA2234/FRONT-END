 import './Header.css'
 import Logo from './../assets/Criativa.png'
//  import produto1 from './../assets/produtos/produto1.png

 function Header() {
    return(
        <>
        <header className='w-full p-3 bg-sky-400 flex justify-between'>

<img  src={Logo} />
<a href="#">HOME</a>
        </header>
    </>

    );
}

export default Header

    