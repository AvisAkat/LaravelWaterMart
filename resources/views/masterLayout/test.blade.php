<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <link
      href="https://getbootstrap.com/docs/5.3/assets/css/docs.css"
      rel="stylesheet"
    />
    <title>Bootstrap Example</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
  </head>
  <body >
    <!-- Example Code -->

    <style>
      
      
      .modal .card {
          width: 350px;
          background-color: #efefef;
          border: none;
          cursor: pointer;
          transition: all 0.5s;
      }
      
      
      </style>
      
      
      <div class="" id="addProductQty"  aria-hidden="true">
          <div class="modal-dialog">
              <div class="modal-content">
                  <div class="modal-header">
                      <h1 class="modal-title fs-5 text-center" id="exampleModalLabel">Quantity</h1>
                      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                  </div>
                  <div class="modal-body">
                      hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh
                  </div>
                  
              </div>
          </div>
      </div>
      
    <!-- End Example Code -->
  </body>
</html>


{{-- 
public function sendNotification(Request $request, string $id)
    {

        $product = Product::findOrFail($id);

        Mail::to(Auth::user()->email)->send(new Notification(Auth::user()->name,collect($product)));

        return redirect()->back()->with(['status'=> 'success', 'message'=> 'We will notify you when the product is available']);



    } --}}