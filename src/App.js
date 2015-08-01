/**
 * Copyright 2015-present Greg Hurrell. All rights reserved.
 * Licensed under the terms of the MIT license.
 *
 * @flow
 */

'use strict';

import React from 'react';
import Field from './Field.react';
import Label from './Label.react';

require('./App.css');

export default class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      value: null,
    };
  }

  _onValueChange = (value: string) => {
    this.setState({value});
  }

  render() {
    return (
      <div className="hextrapolate">
        <h1>Hextrapolate</h1>
        <Label text="Hexadecimal">
          <Field
            base={16}
            onValueChange={this._onValueChange}
            value={this.state.value}
          />
        </Label>
        <Label text="Decimal">
          <Field
            onValueChange={this._onValueChange}
            value={this.state.value}
          />
        </Label>
        <Label text="Octal">
          <Field
            base={8}
            onValueChange={this._onValueChange}
            value={this.state.value}
          />
        </Label>
        <Label text="Binary">
          <Field
            base={2}
            onValueChange={this._onValueChange}
            value={this.state.value}
          />
        </Label>
      </div>
    );
  }
}
