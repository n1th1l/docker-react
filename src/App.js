import './App.css';

import React, { Component } from 'react';

import logo from './logo.svg';

class App extends Component {
  render() {
    return (
      <div className='App'>
        <header className='App-header'>
          <img src={logo} className='App-logo' alt='logo' />
          <p>New update received at 23-Jan 15:03</p>
        </header>
      </div>
    );
  }
}

export default App;
