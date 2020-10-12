@extends('web.pages.layout')

@section('title')
@lang('site.complete_payment')
@endsection

@section('content')
    {{-- <form class="edit_checkout require-validation" method="post" action="{{ route('checkout') }}"  id="payment-form"> --}}
        <form id="form-container" method="post" action="{{ route('web.charge') }}">
          <input type="hidden" name="tapToken" id="tokeninput" value="hi">

          <!-- Tap element will be here -->
            <div id="element-container"></div>
            <div id="error-handler" role="alert"></div>
            <div id="success" style=" display: none;;position: relative;float: left;">
                  Success! Your token is <span id="token"></span>
            </div>
            <!-- Tap pay button -->
            <button class="btn btn-block btn-yellow" id="tap-btn">@lang('site.complete_payment')</button>
          </form>

            {{-- <script type="text/javascript" src="{{asset('site/js/jquery.min.js')}}"></script> --}}
    <script src="{{ asset('dashboard/js/jquery.min.js') }}"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bluebird/3.3.4/bluebird.min.js"></script>
    <script src="https://secure.gosell.io/js/sdk/tap.min.js"></script>

    <script type="text/javascript">

//pass your public key from tap's dashboard
var tap = Tapjsli('{{ env("TAP_PUBLIC_KEY") }}');
var elements = tap.elements({});
var style = {
  base: {
    color: '#535353',
    lineHeight: '18px',
    fontFamily: 'sans-serif',
    fontSmoothing: 'antialiased',
    fontSize: '16px',
    '::placeholder': {
      color: 'rgba(0, 0, 0, 0.26)',
      fontSize:'15px'
    }
  },
  invalid: {
    color: 'red'
  }
};
// input labels/placeholders
var labels = {
    cardNumber:"Card Number",
    expirationDate:"MM/YY",
    cvv:"CVV",
    cardHolder:"Card Holder Name"
  };
//payment options
var paymentOptions = {
  currencyCode:["KWD","USD","SAR"],
  labels : labels,
  TextDirection:'ltr'
}
//create element, pass style and payment options
var card = elements.create('card', {style: style},paymentOptions);
//mount element
card.mount('#element-container');
//card change event listener
card.addEventListener('change', function(event) {
  if(event.BIN){
    console.log(event.BIN)
  }
  if(event.loaded){
    console.log("UI loaded :"+event.loaded);
    console.log("current currency is :"+card.getCurrency())
  }
  var displayError = document.getElementById('error-handler');
  if (event.error) {
    displayError.textContent = event.error.message;
  } else {
    displayError.textContent = '';
  }
});

// Handle form submission
var form = document.getElementById('form-container');
        form.addEventListener('submit', function(event) {
                event.preventDefault();
                tap.createToken(card).then(function(result) {
                    console.log(result);
                    if (result.error) {
                        // Inform the user if there was an error
                        var errorElement = document.getElementById('error-handler');
                        errorElement.textContent = result.error.message;
                    } else {
                        // Send the token to your server
                        var errorElement = document.getElementById('success');
                        errorElement.style.display = "block";
                        var tokenElement = document.getElementById('tokeninput');
                        tokenElement.value = result.id;
                        //form.submit();
                        console.log(result.id);
                    }
                });
        });
    </script>
    
@endsection






