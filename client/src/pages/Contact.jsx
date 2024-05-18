import React, { useState } from "react";
import { Button, TextField, Typography, Box, Grid } from "@mui/material";
import { Link } from "react-router-dom";
import Axios from "axios";
import { Container, Row, Col, Form, FormGroup, Input } from "reactstrap";
import Helmet from "../components/Helmet/Helmet";
import CommonSection from "../components/UI/CommonSection";
import { toastMessage } from "../utils/toastMessage";

import "../styles/contact.css";

const socialLinks = [
  {
    url: "#",
    icon: "ri-facebook-line",
  },
  {
    url: "#",
    icon: "ri-instagram-line",
  },
  // {
  //   url: "#",
  //   icon: "ri-linkedin-line",
  // },
  {
    url: "#",
    icon: "ri-twitter-line",
  },
];

const Contact = () => {
  // const [name, setName] = useState("");
  // const [email, setEmail] = useState("");
  // const [question, setQuestion] = useState("");
  const [userContact, setUserContact] = useState({
    name: "",
    email: "",
    question: "",
  });

  const handleUserContactChange = (event) => {
    const { name, value } = event.target;

    setUserContact((prevState) => ({
      ...prevState,
      [name]: value,
    }));
  };

  const sendMessage = async (event) => {
    event.preventDefault();
    if (!userContact.name || !userContact.email || !userContact.question) {
      // Проверка на пустые значения
      //toastMessage("Пожалуйста, заполните все поля формы.");
      return;
    }
    await Axios.post("http://localhost:3307/sendMessage", {
      name: userContact.name,
      email: userContact.email,
      question: userContact.question,
    });
    toastMessage("С вами свяжутся, обязательно!👍");
    setUserContact({
      name: "",
      email: "",
      question: "",
    });
  };
  return (
    <Helmet title="Contact">
      <CommonSection title="Контакты" />
      <section>
        <Container>
          <Row>
            <Col lg="7" md="7">
              <h6 className="fw-bold mb-4">Свяжитесь с нами</h6>

              {/* <Form>
                <FormGroup className="contact__form">
                  <Input placeholder="Ваше имя" type="text" />
                </FormGroup>
                <FormGroup className="contact__form">
                  <Input placeholder="Email" type="email" />
                </FormGroup>
                <FormGroup className="contact__form">
                  <textarea
                    rows="5"
                    placeholder="Задайте свой вопрос"
                    className="textarea"
                  ></textarea>
                </FormGroup>

                <button className=" contact__btn" type="submit">
                  Отправить сообщение
                </button>
              </Form> */}
              <form
                onSubmit={sendMessage}
                style={{ display: "flex", flexDirection: "column" }}
              >
                <TextField
                  name="name"
                  label="Имя"
                  size="medium"
                  type="phone"
                  value={userContact.name}
                  onChange={handleUserContactChange}
                  required
                  sx={{ marginBottom: "10px" }}
                />
                <TextField
                  name="email"
                  label="Почта"
                  size="medium"
                  type="email"
                  value={userContact.email}
                  required
                  onChange={handleUserContactChange}
                  sx={{ marginTop: "10px", marginBottom: "20px" }}
                />
                <TextField
                  name="question"
                  label="Ваш вопрос"
                  size="medium"
                  type="text"
                  value={userContact.question}
                  onChange={handleUserContactChange}
                  required
                  sx={{ marginTop: "10px", marginBottom: "20px" }}
                />
                <button className=" contact__btn" type="submit">
                  Отправить сообщение
                </button>
              </form>
            </Col>

            <Col lg="5" md="5">
              <div className="contact__info">
                <h6 className="fw-bold">Информация о нас</h6>
                <p className="section__description mb-0">
                  Беларусь, Витебск, ул. Терешковой, 9В
                </p>
                <div className=" d-flex align-items-center gap-2">
                  <h6 className="fs-6 mb-0">Телефон</h6>
                  <p className="section__description mb-0">+375(29)1112233</p>
                </div>

                <div className=" d-flex align-items-center gap-2">
                  <h6 className="mb-0 fs-6">Email:</h6>
                  <p className="section__description mb-0">
                    carrentVitebsk@gmail.com
                  </p>
                </div>

                <h6 className="fw-bold mt-4">Подписывайтесь на нас</h6>

                <div className=" d-flex align-items-center gap-4 mt-3">
                  {socialLinks.map((item, index) => (
                    <Link
                      to={item.url}
                      key={index}
                      className="social__link-icon"
                    >
                      <i className={item.icon}></i>
                    </Link>
                  ))}
                </div>
              </div>
            </Col>
          </Row>
        </Container>
      </section>
    </Helmet>
  );
};

export default Contact;
