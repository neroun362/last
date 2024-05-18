import React, { useState } from "react";
import "../../styles/payment-method.css";
import all from "../../assets/all-images/all.png";

const PaymentMethod = () => {
  // Состояние для отслеживания выбранного метода оплаты
  const [selectedPayment, setSelectedPayment] = useState("");

  // Обработчик изменений для выбора метода оплаты
  const handlePaymentChange = (paymentMethod) => {
    setSelectedPayment(paymentMethod);
  };

  return (
    <>
      <div className="payment">
        {/* Используем управляемый компонент radio */}
        <label htmlFor="" className="d-flex align-items-center gap-2">
          <input
            type="radio"
            checked={selectedPayment === "online"}
            onChange={() => handlePaymentChange("online")}
          />{" "}
          Банковской картой онлайн
        </label>
      </div>

      <div className="payment mt-3">
        {/* Используем управляемый компонент radio */}
        <label htmlFor="" className="d-flex align-items-center gap-2">
          <input
            type="radio"
            checked={selectedPayment === "offline"}
            onChange={() => handlePaymentChange("offline")}
          />{" "}
          Банковской картой при получении
        </label>
      </div>

      <div className="payment mt-3 d-flex align-items-center justify-content-between">
        {/* Используем управляемый компонент radio */}
        <label htmlFor="" className="d-flex align-items-center gap-2">
          <input
            type="radio"
            checked={selectedPayment === "cash"}
            onChange={() => handlePaymentChange("cash")}
          />{" "}
          Наличными
        </label>
      </div>
      <br></br>

      <div>
        <img src={all} alt="" style={{ width: "300px", height: "auto" }} />
      </div>

      <div className="payment text-end mt-5">
        <button>Арендовать</button>
      </div>
    </>
  );
};

export default PaymentMethod;
