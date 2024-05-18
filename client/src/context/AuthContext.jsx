import { userRepository } from "../config/userRepository";
import { createContext, useContext, useState } from "react";

const AuthContext = createContext(undefined);

export const AuthContextProvider = ({ children }) => {
  const [authUser, setAuthUser] = useState(userRepository.getUser() || null);

  const authUserChangeHandler = (user) => {
    setAuthUser(user);

    user ? userRepository.setUser(user) : userRepository.removeUser();
  };

  return (
    <AuthContext.Provider value={{ user: authUser, authUserChangeHandler }}>
      {children}
    </AuthContext.Provider>
  );
};

// Consumers
//возвращаем контекст
export const useAuthContext = () => {
  const context = useContext(AuthContext);

  if (context == null) {
    throw new Error(
      "useAuthContext should be used within a AuthContextProvider"
    );
  }

  return context;
};
