<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<title>Insert title here</title>

<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">




<style>
.buy-container {
  box-sizing: border-box;
}

.buy-container.row {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  -ms-flex-wrap: wrap; /* IE10 */
  flex-wrap: wrap;
  margin: 0 -16px;
}

.buy-container.col-50 {
  -ms-flex: 50%; /* IE10 */
  flex: 50%;
}

.buy-container.col-75 {
  -ms-flex: 75%; /* IE10 */
  flex: 75%;
}

.buy-container.col-25,
.buy-container.col-50,
.buy-container.col-75 {
  padding: 0 16px;
}

.buy-container.container {
  background-color: #f2f2f2;
  padding: 5px 20px 15px 20px;
  border: 1px solid lightgrey;
  border-radius: 3px;
}

.buy-container input[type=text] {
  width: 100%;
  margin-bottom: 20px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 3px;
}

.buy-container label {
  margin-bottom: 10px;
  display: block;
}

.buy-container.icon-container {
  margin-bottom: 20px;
  padding: 7px 0;
  font-size: 24px;
}

.buy-container.btn {
  background-color: #04AA6D;
  color: white;
  padding: 12px;
  margin: 10px 0;
  border: none;
  width: 100%;
  border-radius: 3px;
  cursor: pointer;
  font-size: 17px;
}

.buy-container.btn:hover {
  background-color: #45a049;
}

.buy-containera {
  color: #2196F3;
}


        .buy-container.text-container{
            margin-left: 20px;
        }

        .buy-container{
            width: 1350px;
            height: 2000px;
            margin: 30px auto;
            border: 1px solid gray;
        }
        buy-container::-webkit-scrollbar {
            display: none; /* Chrome, Safari, Opera*/
        }


        .buy-container.leftside{
            float: left;
            padding-inline: 20px;
            
            border: 1px solid gray;
            border-radius: 1em;
            width: 800px;
            height: 2000px;
        }

        .buy-container.rightside{
            position: sticky;
            display: inline-flex;
            top: 0;
            left: 20%;
            background: white;
            border-radius: 1em;
            
            float: right;
            width: 430px;
            height: 500px;
            position: sticky;
            
            border: 1px solid gray;
            box-shadow: 5px 5px 5px gray;
            font-size: 25px;
            text-align: center;
        
        }

        .buy-container.chance{
            margin-top: 40px;
            margin-left: 10px;
            width: 400px;
            height: 100px;
            padding-inline: 20px;
            border: 2px solid gray;
            border-radius: 1em;
        }
    </style>
</head>
<body>
    <div class="buy-container">
        <div class="leftside">
            <div class="text-container">
                <h1>확인 및 결제</h1>
                <div class="chance"><br><b>흔치 않은 기회입니다. <br>HIMZ님의 숙소는 보통 예약이 가득 차 있습니다.</b></div>
                <h2>예약 정보</h2>

                <p>날짜 <br>5월 15일~21일</p>
            </div>


            
            <div class="col-75">
                <div class="container">
                  <form action="/action_page.php">
                  
                    <div class="row">
                      <div class="col-50">
                        <h3>Billing Address</h3>
                        <label for="fname"><i class="fa fa-user"></i> Full Name</label>
                        <input type="text" id="fname" name="firstname" placeholder="John M. Doe">
                        <label for="email"><i class="fa fa-envelope"></i> Email</label>
                        <input type="text" id="email" name="email" placeholder="john@example.com">
                        <label for="adr"><i class="fa fa-address-card-o"></i> Address</label>
                        <input type="text" id="adr" name="address" placeholder="542 W. 15th Street">
                        <label for="city"><i class="fa fa-institution"></i> City</label>
                        <input type="text" id="city" name="city" placeholder="New York">
            
                        <div class="row">
                          <div class="col-50">
                            <label for="state">State</label>
                            <input type="text" id="state" name="state" placeholder="NY">
                          </div>
                          <div class="col-50">
                            <label for="zip">Zip</label>
                            <input type="text" id="zip" name="zip" placeholder="10001">
                          </div>
                        </div>
                      </div>
            
                      <div class="col-50">
                        <h3>Payment</h3>
                        <label for="fname">Accepted Cards</label>
                        <div class="icon-container">
                          <i class="fa fa-cc-visa" style="color:navy;"></i>
                          <i class="fa fa-cc-amex" style="color:blue;"></i>
                          <i class="fa fa-cc-mastercard" style="color:red;"></i>
                          <i class="fa fa-cc-discover" style="color:orange;"></i>
                        </div>
                        <label for="cname">Name on Card</label>
                        <input type="text" id="cname" name="cardname" placeholder="John More Doe">
                        <label for="ccnum">Credit card number</label>
                        <input type="text" id="ccnum" name="cardnumber" placeholder="1111-2222-3333-4444">
                        <label for="expmonth">Exp Month</label>
                        <input type="text" id="expmonth" name="expmonth" placeholder="September">
                        <div class="row">
                          <div class="col-50">
                            <label for="expyear">Exp Year</label>
                            <input type="text" id="expyear" name="expyear" placeholder="2018">
                          </div>
                          <div class="col-50">
                            <label for="cvv">CVV</label>
                            <input type="text" id="cvv" name="cvv" placeholder="352">
                          </div>
                        </div>
                      </div>
                      
                    </div>
                    <label>
                      <input type="checkbox" checked="checked" name="sameadr"> Shipping address same as billing
                    </label>
                    <input type="submit" value="Continue to checkout" class="btn">
                  </form>
                </div>
              </div>
                
              <div class="text-container">
                <br>
                <hr>
                <h2>환불 정책</h2>
                
                <p>입실 1달 전까지 무료로 취소하실 수 있습니다. 2주 전에 취소하면 부분 환불을 받으실 수 있습니다.</p>
                <br>
                <hr>
                <h2>기본 규칙</h2>
                <p>훌륭한 게스트가 되기 위한 몇 가지 간단한 규칙을 지켜주실 것을 모든 게스트에게 당부드리고 있습니다.</p>
                <p>· 숙소 이용규칙을 준수하세요</p>
                <p>· 호스트의 집도 자신의 집처럼 아껴주세요</p>
                
              </div>





        </div>

     

        <div class="rightside">

                <br><p style="margin-right:80px ;"><b style="font-size: 30px;">￦102,340</b> /박</p>


               <br>

                <button class="reservation" ><b>예약하기</b></button>

        </div>

    </div>
    꿹뚥깗!



</body>

</html>