<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment Gateway</title>
    <link rel="stylesheet" href="payment.css">
</head>
<body>
    <div class="payment-container">
        <h2>Payment Gateway</h2>
        <% 
            if (session.getAttribute("bookingId") == null) {
                response.sendRedirect("error.jsp");
                return;
            }
        %>
        
        <div class="payment-summary">
            <h3>Payment Details:</h3>
            <p>Package Price: <span id="packagePrice">${sessionScope.packagePrice}</span></p>
            <p>Total Amount: <span id="totalAmount">${sessionScope.totalAmount}</span></p>
            <p>Discount: <span id="discount">${sessionScope.discount}</span></p>
        </div>
        
        <form action="${pageContext.request.contextPath}/PaymentServlet" method="post">
            <div class="payment-options">
                <h3>Payment Options:</h3>
                <div class="option">
                    <input type="radio" id="credit-debit-card" name="paymentOption" value="creditDebitCard" checked onchange="showPaymentInfo(this.value)">
                    <label for="credit-debit-card">Credit/Debit Card</label>
                </div>
                <div class="option">
                    <input type="radio" id="net-banking" name="paymentOption" value="netBanking" onchange="showPaymentInfo(this.value)">
                    <label for="net-banking">Net Banking</label>
                </div>
                <div class="option">
                    <input type="radio" id="upi" name="paymentOption" value="upi" onchange="showPaymentInfo(this.value)">
                    <label for="upi">UPI</label>
                </div>
            </div>
            
            <div class="payment-info">
                <div id="credit-debit-card-info" style="display:block;">
                    <h3>Credit/Debit Card Information:</h3>
                    <label for="card-number">Card Number:</label>
                    <input type="text" id="card-number" name="cardNumber" placeholder="XXXX-XXXX-XXXX-XXXX" required>
                    <label for="expiration-date">Expiration Date:</label>
                    <input type="month" id="expiration-date" name="expirationDate" placeholder="MM/YY" required>
                    <label for="cvv">CVV:</label>
                    <input type="password" id="cvv" name="cvv" maxlength="3" placeholder="XXX" required>
                    <label for="card-holder-name">Card Holder Name:</label>
                    <input type="text" id="card-holder-name" name="cardHolderName" placeholder="John Doe" required>
                </div>
                <div id="net-banking-info" style="display:none;">
                    <h3>Net Banking Information:</h3>
                    <label for="bank-name">Bank Name:</label>
                    <input type="text" id="bank-name" name="bankName" placeholder="Bank of America" required>
                    <label for="account-number">Account Number:</label>
                    <input type="text" id="account-number" name="accountNumber" placeholder="XXXXXX" required>
                    <label for="ifsc-code">IFSC Code:</label>
                    <input type="text" id="ifsc-code" name="ifscCode" placeholder="ABC123" required>
                </div>
                <div id="upi-info" style="display:none;">
                    <h3>UPI Information:</h3>
                    <label for="upi-id">UPI ID:</label>
                    <input type="text" id="upi-id" name="upiId" placeholder="johnDoe@upi" required>
                </div>
            </div>
            <div class="button-container">
                <button class="pay-btn" type="submit">Pay Now</button>
                <button class="cancel-btn" onclick="cancelPayment()">Cancel</button>
                
            </div>
		</form>
    </div>
    
    
   

<script>
    function showPaymentInfo(paymentOption) {
        const creditDebitCardInfo = document.getElementById('credit-debit-card-info');
        const netBankingInfo = document.getElementById('net-banking-info');
        const upiInfo = document.getElementById('upi-info');

        switch (paymentOption) {
            case 'creditDebitCard':
                creditDebitCardInfo.style.display = 'block';
                netBankingInfo.style.display = 'none';
                upiInfo.style.display = 'none';
                break;
            case 'netBanking':
                creditDebitCardInfo.style.display = 'none';
                netBankingInfo.style.display = 'block';
                upiInfo.style.display = 'none';
                break;
            case 'upi':
                creditDebitCardInfo.style.display = 'none';
                netBankingInfo.style.display = 'none';
                upiInfo.style.display = 'block';
                break;
            default:
                creditDebitCardInfo.style.display = 'none';
                netBankingInfo.style.display = 'none';
                upiInfo.style.display = 'none';
        }
    }

    function cancelPayment() {
        alert("Payment cancelled!");
        window.location.href = "home.jsp";
    }


	// Form submission event handler
    document.addEventListener("DOMContentLoaded", function() {
        const payBtn = document.querySelector(".pay-btn");
        payBtn.addEventListener("click", function(event) {
            // Prevent default form submission behavior
            event.preventDefault();

            // Submit the form programmatically
            const form = document.querySelector("form");
            form.submit();
        });
    });
</script>
</body>
</html>


