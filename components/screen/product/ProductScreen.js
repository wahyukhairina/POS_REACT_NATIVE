import React, { Component } from 'react'
import { connect } from 'react-redux';
import axios from 'axios'
import { View, Image, Text, FlatList, TouchableOpacity } from 'react-native';

import { getProduct } from '../../redux/actions/product'

class ProductScreen extends Component {

  componentDidMount(){
    this.getProduct()
  }

  async getProduct(){
    axios({
      method: 'GET',
      url: 'http://192.168.1.12:8006/product'
    })
    .then (res => console.log(res)) 
    .catch (err => console.log(err)) 

    // await this.props.dispatch(getProduct())
  }

  render(){
    console.log(this.props)
    return (
      <Text>ini Book Screen</Text>
    )
  }
}

const mapStateToProps = (state) => {
  return{
    products: state.products
  }
}

export default connect(mapStateToProps)(ProductScreen)