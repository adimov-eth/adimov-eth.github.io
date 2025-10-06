# PromptPay

Thailand's national real-time payment system. Government-backed, like Venmo/Zelle but with better penetration.

## Key Statistics (2025)

**Adoption:** 81M users (out of 72M population – includes business accounts)

**Transaction fees:** 0.8-1.5% (vs 3%+ for credit cards, 2-2.5% for international payment gateways)

**Volume:** ฿47.42 trillion processed in 2023, growing 35% YoY

**Market share:** 67% of mobile banking transactions use PromptPay

## Why It Matters for GolfOkay

**Local preference:** Thai customers expect PromptPay as payment option. Not offering it = friction.

**Lower fees:** Save ~1.5-2% per transaction vs credit cards. On ฿100K package = ฿1,500-2,000 saved.

**Fast checkout:** Scan QR code, pay from any Thai bank app. No card entry, no declined payments.

**No chargebacks:** Direct bank transfer (not credit), can't be reversed. Lower fraud risk.

**Instant settlement:** Money arrives in business account within seconds, not 3-5 days like cards.

## How It Works (Customer Flow)

1. Customer confirms booking: ฿100,000 package
2. Platform generates PromptPay QR code with amount + ref ID
3. Customer receives QR via LINE message
4. Customer opens their bank app (any Thai bank)
5. Scans QR code
6. Confirms payment with PIN/biometric
7. Payment completes in <10 seconds
8. Platform receives webhook notification
9. System releases [[e_vouchers|e-voucher]]

**No manual verification needed.** Webhook confirms payment automatically.

## Integration (Technical)

**Payment gateway options:**
- 2C2P (local Thai gateway, supports PromptPay)
- Omise (popular for startups, good documentation)
- Stripe (supports PromptPay via Thailand Local Payment Methods)

**API flow:**
```
POST /create-payment
{
  "amount": 100000,
  "currency": "THB",
  "payment_method": "promptpay",
  "metadata": {
    "booking_id": "12345"
  }
}

Response:
{
  "qr_code_url": "https://...",
  "payment_id": "pay_xxx",
  "expires_at": "2025-10-06T10:30:00Z"
}

Webhook on payment success:
{
  "event": "payment.succeeded",
  "payment_id": "pay_xxx",
  "amount": 100000,
  "metadata": { "booking_id": "12345" }
}
```

**QR code expires:** 10-15 minutes (configurable). After expiry, customer must request new code.

## Fee Structure

**PromptPay QR:**
- Consumer → Business: 0.8-1.5% (depends on gateway provider)
- No fee to customer (bank absorbs cost)

**Credit cards (comparison):**
- Thai cards: 2.5-3%
- International cards: 3-3.5%
- Amex: 3.5-4%

**Cost savings example:**
- Package value: ฿100,000
- PromptPay fee (1.2%): ฿1,200
- Credit card fee (3%): ฿3,000
- Savings: ฿1,800 per package

**At 75 packages/month:** ฿135,000/month savings (~$4,000)

## Limitations

**Thai-only:** Only works with Thai bank accounts. International tourists need credit card option.

**No installments:** PromptPay is one-time payment. Can't do "pay 50% now, 50% later."

**Bank app required:** Customer must have Thai mobile banking set up (rare for short-term tourists).

## GolfOkay Payment Strategy

**Priority 1: PromptPay** (for Thai customers, expats with Thai bank accounts)
- 60-70% of transactions expected to use PromptPay
- Lowest fees, instant settlement
- Primary method for domestic market

**Priority 2: Credit cards** (for international tourists)
- 25-35% of transactions
- Higher fees but necessary for inbound golf tourists
- Support Visa, Mastercard, Amex

**Priority 3: Bank transfer** (for corporate bookings)
- Manual invoice + transfer for high-value group bookings
- No payment gateway fees, but manual verification needed

## Competitive Advantage

**Competitors still using credit cards primarily:**
- Golfasian: Email invoices, bank transfer or card on arrival
- Club Thailand Card: Manual card entry on website (no PromptPay)
- Golfsavers: Credit card focused, PromptPay recently added

**GolfOkay differentiation:**
- PromptPay QR in LINE bot (scan & pay in-app)
- No need to leave messaging flow
- Lower prices possible due to lower payment processing costs

## Technical Requirements

**Gateway integration:** 2-3 weeks development

**Webhook handling:** Must process payment confirmations reliably (retry logic, idempotency)

**QR code delivery:** Via LINE message API (can embed QR image directly)

**Expiry handling:** Regenerate QR if customer takes too long (send new message)

## See Also

- [[unit_economics]] - How payment fees impact per-package margins
- [[e_vouchers]] - Payment status shown in e-voucher (paid/pending/refunded)
- [[manual_desk]] - Payment confirmation workflow for manual bookings
