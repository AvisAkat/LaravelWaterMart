<style>
    .modal * {
        /* margin: 0;
        padding: 0 */
    }
    
    .modal .card {
        width: 350px;
        background-color: #efefef;
        border: none;
        cursor: pointer;
        transition: all 0.5s;
    }

    .btnContact {
        width: 100%;
        border: none;
        border-radius: 5px;
        margin-top: 20px;
        height: 33px;
        
        
        color: #fff;
        
    }

     .alert{
        margin-top: 5px;
        padding: 5px;
        text-align: center;
    }
    
    
    </style>
    
    
    <div class="modal fade" id="addProductQty<?php echo $productID ?>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        {{ $product = App\Models\Product::findOrFail($productID)}}
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5 text-center" id="exampleModalLabel">{{ $product->name }}</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form action="{{ route('admin.add.product.quanity', ['product' => $product->id]) }}" method="POST">
                        @csrf
                        <label for="Pqty">Add Quantity:</label>
                        <input id="Pqty" type="number"  name="quantity_in_stock" class="form-control" value="{{ old('quantity_in_stock') ? old('quantity_in_stock') : $product->quantity_in_stock }}" />
                        @if($errors->has('quantity_in_stock'))
                            <div class="alert alert-danger">
                                {{ $errors->first('quantity_in_stock') }}
                            </div>
                        @endif

                        <input type="submit" name="btnSubmit" class="btnContact btn-primary" value="ADD" />
                    </form>
                </div>
                
            </div>
        </div>
    </div>
    