<style>

    
    .navbar-new-top{
        background: #fff;
    }
    .navbar-brand{
        font-weight: 600;
    }
    .navbar-brand img{
        width: 30px;
        
    }
    .navbar-new-top ul{
        margin-right: 2%;
    }
    .navbar-new-top ul li{
        margin-right: 2%;
    }
    .navbar-new-bottom{
        background-color: #f7f7f7;
        box-shadow: 0 5px 6px -2px rgba(0,0,0,.3);
        border-top: 1px solid #e0e0e0;
        /* margin-top: 3.4%; if 0 the top navbar will disapper */
        height: 40px;

        transition: 2s ease;
    }
    .navbar-new-bottom ul li{
        margin-left: 2%;
        margin-right: 2%;
        transition: 1s ease;
    }
    
    .navbar-nav .nav-item a {
        color: #333;
        font-size: 14px;
        font-weight: 600;
        transition: 1s ease;
        
    }

    .navbar-nav .nav-item .btn {
        color: #333;
        font-size: 14px;
        font-weight: 600;
        transition: 1s ease;
        
    }

    .navbar-nav .nav-item a:hover{
        color: #0062cc;
    }
    .navbar-nav .nav-item button:hover{
        color: #0062cc;
    }
    .dropdown-menu.show{
        background: #f8f9fa;
        border-radius: 0;
    }
    /* .header-btn{
        width: 161%;
        border: none;
        border-radius: 1rem;
        padding: 8%;
        background: #0062cc;
        color: #fff;
        font-weight: 700;
        font-size: 13px;
        cursor: pointer;
    } */

    .navbar-new-top .btn1 {
        height: 50px;
        width: 50px;
        border-radius: 50%;
        background-color: transparent;
        font-size: 9px;
        
        
        
    }
    .navbar-new-top .btn1 img{
        height: 100%;
        width: 100%;
        border-radius: 50%;
        margin: 0;
        
    }
    .navbar-new-top .collapse-btn{
        color: #0062cc;
        border: 1px solid #0062cc;
        margin-left: 10px !important;
        
    }

    .nav-item i{
        font-size: 20px;
    }

    /* .admin{
        justify-content: center;
        margin-top: 6px;
        
    } */

    
    
    @media (max-width: 769px)
    {
        .navbar-new-bottom{
            background: transparent;

           
        }

        .n2{
        /* background-color: rgb(234, 233, 233); */
        background: -webkit-linear-gradient(left, #63a8fb, #f6f9fa);
        border-radius: 20px;
        
        
        }

        .n2 .nav-item a{
            color: #343535;
        }

        .n2 li:hover{
            background-color: white;
        }

        .navbar-new-bottom ul li{
            margin-left: 0%;
            margin-right: 0%;
            padding-left: 5%;
            padding-right: 2%; 
            transition: 1s ease;
        }

        .admin .navbar-new-bottom .dropdown-menu{
            float: initial !important;
        }

        

    

        
        
    }

    @media (max-width: 500px)
    {
        .nav-item i{
            font-size: 15px;
        }

        .navbar-new-top .btn1 {
        height: 40px;
        width: 40px;
        border-radius: 50%;
        background-color: transparent;
        font-size: 7px;
        
        
        
        }

        .navbar-new-top .collapse-btn{
            font-size: 12px;
            margin-left: 0px !important;
            
        }

        .navbar-new-top ul{
            margin-right: 0.1%;
        }
        .navbar-new-top ul li{
            margin-right: 0.5%;
            padding-left: 1px;
            padding-left: 1px;
        }

    }
   

</style>


<div class="double-navbar fixed-top ">
    
    <nav class="navbar navbar-expand-md flex-nowrap navbar-new-top"> {{-- fixed-top --}}
        <a href="/" class="navbar-brand"><img src="{{env('APP_URL')}}/images/water-drop.png" alt=""/> Water Mart</a>
        <ul class="nav navbar-nav mr-auto"></ul>
        <ul class="navbar-nav flex-row">
            
            @guest
                <li class="nav-item">
                    <a class="nav-link px-2" href="{{route('auth.signin')}}">SignIn</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link px-2" href="{{route('auth.signup')}}">SignUp</a>
                </li>
            @endguest

            @auth

                <li class="nav-item">
                    <a class="nav-link px-2" href="{{route('auth.carts.index')}}"><i class="bi bi-cart3"></i></a>
                </li>

                <li class="nav-item">
                    <button type="button" class="btn1 nav-link px-2" data-bs-toggle="modal" data-bs-target="#exampleModal">
                        {{-- {{ Auth::user()->email }} --}}
                        <img src="@if(Auth::user()->userProfile->profile_pic === null) {{env('APP_URL')}}/images/user.png @else {{ Auth::user()->userProfile->getUserProfilePic()}} @endif" />
                    </button>
                </li>
                    <!-- Modal -->

                <li class="nav-item">
                    <form action="{{route('auth.logout')}}" method="POST">
                        @csrf
                        <button class="btn nav-link px-2" type="submit" ><i class="bi bi-door-open"></i></a>
                    </form>
                </li>

                
            @endauth
            
        </ul>
        <button class="navbar-toggler collapse-btn ml-auto " type="button" data-toggle="collapse" data-target="#navbar2" >
            <i class="bi bi-list"></i>
        </button>
          
        
    </nav>
    <nav class="navbar  navbar-expand-md navbar-new-bottom "> {{-- fixed-top --}}
        
        <div class="navbar-collapse collapse pt-md-0" id="navbar2">
            
            <ul class="navbar-nav n2 w-100 justify-content-center">
                <li class="nav-item">
                    <a class="nav-link" href="{{route('home')}}">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link">Link</a></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link">Link</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link">Link</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link">Link</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link">Link</a>
                </li>
                @auth
                     @if(Auth::User()->role == 'admin')
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle admin" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Admin
                            </a>
                            <ul class="dropdown-menu" style="margin-right: 10px;">
                                <li><a class="dropdown-item" href="{{ route('admin.users.index')}}">🙎 Users</a></li>
                                <li><a class="dropdown-item" href="{{ route('admin.products.index')}}">📦 Products</a></li>
                                <li><a class="dropdown-item" href="{{ route('admin.sales.index')}}">📈 Sales</a></li>
                                <li><a class="dropdown-item" href="{{ route('admin.brands.index')}}">🔖 Brands</a></li>
                            </ul>
                        </li>
                        
                        
                    @endif

                @endauth
                
               
            </ul>
        </div>
    </nav>
    
</div>

 <!-- Modal -->
