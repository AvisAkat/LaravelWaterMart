<style>

  .pro-card{
    width: 18rem;
  }

  .pro-card img{
    height: 14rem;
    text-align: center;
    justify-content: center;
  }

  @media(max-width: 767px)
    {
        .pro-card{
            width: 23rem;
            
        }

        
  }
</style>

<div class="card pro-card m-3 p-3">
    <img src="{{ $product->getProductImage()}}" class="card-img-top" alt="..." >
    <div class="card-body">
      <h5 class="card-title">{{ $product->name }}</h5>
      <p class="card-text">{{ $product->description }}</p>
      
    </div>
    <div class="card-footer d-flex justify-content-center">
        
        <div style="margin-right: 3px;">
        <form action="{{ route('auth.carts.store', ['product' => $product->id]) }}" method="post">
            @csrf
             <button type="submit" class="btn btn-primary m-2 w-100" @if( $product->quantity_in_stock == 0) disabled @endif><i class="bi bi-cart-plus"></i></button>   
        </form>
        </div>
        
        
        {{-- <a href="#" class="btn btn-primary me-2">Add To Cart</a> --}}
        @if( $product->quantity_in_stock == 0)
        <div style="margin-left: 3px;">
          <form action="{{ route('mail.notify.store', ['product' => $product->id]) }}" method="post">
            @csrf
            <button class="btn btn-primary m-2 w-100" data-bs-toggle="tooltip" data-bs-placement="top" data-bs-custom-class="custom-tooltip" data-bs-title="Click to notify you when product is available"
             type="submit">
             <i class="bi bi-bell-fill"></i></button>
            
          </form>
        </div>
        @endif

    </div>
</div>

