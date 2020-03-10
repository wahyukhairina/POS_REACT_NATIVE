import React, { Component } from 'react'
import {
 StyleSheet,
  Text,
  View,
  ImageBackground,
  Image,
  TextInput,
  Dimensions
} from 'react-native'

import bgImage from '../../../images/bg.jpg'
import logo from '../../../images/logofix.png'

const { width: WIDTH } = Dimensions.get('window')
export default class Login extends Component {
  render () {
    return (
      <ImageBackground source={bgImage} style={styles.backgroundContainer}>
        <View style={styles.logoContainer}>
          <Image source={logo} style={styles.Logo} />
        </View>
        <View>
          <TextInput
          style={styles.input}
            placeholder="Username"
            placeholderTextColor="rgb(212, 76, 150)"
            underlineColorAndroid='transparent'
          />
        </View>
      </ImageBackground>
    )
  }
}

const styles = StyleSheet.create({
  backgroundContainer: {
    flex: 1,
    width: null,
    height: null,
    justifyContent: 'center',
    alignItems: 'center'
  },
  logoContainer: {
    alignItems: 'center'
  },
  Logo: {
    width: 300,
    height: 300
  },
  input: {
      width: WIDTH - 55,
      height: 25,
      borderRadius: 25,
      fontSize: 16,
      paddingLeft: 45,
      backgroundColor: 'rgba(0,0,0,0.35)',
      color: 'rgba(255,255,255,0.7)',
      marginHorizontal: 25
  }
})
