@extends('masterlayout.master')

@section('title', "Water Mart")
@section('content')

<style>
    .all-card{
        text-align: center;
        justify-content: center;
    }

    @media(max-width: 767px)
    {
        .card{
            width: 23rem;
        }
    }

</style>
    
    
    <div class="d-flex flex-wrap all-card">
        @foreach($products as $product)
            @component('product.components.product-card', ['product' => $product])
            @endcomponent
        @endforeach
    </div>


@endsection