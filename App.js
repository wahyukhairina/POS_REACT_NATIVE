import React, { Component } from 'react'
import { createAppContainer, createSwitchNavigator } from 'react-navigation';
import { Provider } from 'react-redux';

import store from './components/redux/store';

// import ProductScreen from './components/screen/product/ProductScreen'
import Login from './components/screen/login/Login'
import ProductScreen from './components/screen/product/ProductScreen';

const AppNavigator = createSwitchNavigator(
  {
  Home: ProductScreen
  }
)

const AppContainer = createAppContainer(AppNavigator)

function App(){
  return(
    <Provider store={store}>
      < AppContainer />
    </Provider>
  )
}

export default App