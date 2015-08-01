/**
 * Copyright 2015-present Greg Hurrell. All rights reserved.
 * Licensed under the terms of the MIT license.
 *
 * @flow
 */

'use strict';

import React from 'react';

const DIGITS = '0123456789abcdef';

/**
 * Convert from canonical (hexadecimal) value to `base`.
 */
function fromValue(value: string, base: number): string {
  if (base === 16) {
    return value;
  }
  for (let i = 0; i < value.length - 1; i++) {
    const digit = value[value.length - 1 - i]; // eslint-disable-line no-unused-vars
    // TODO: finish this
  }
  return value;
}

/**
 * Convert from `base` value to canonical (hexadecimal) value.
 */
function toValue(value: string, base: number): string {
  if (base === 16) {
    return value;
  }
  return value;
}

export default class Field extends React.Component {
  static propTypes = {
    base: React.PropTypes.number,
    onValueChange: React.PropTypes.func.required,
    value: React.PropTypes.string.required,
  };
  static defaultProps = {
    base: 10,
  };

  constructor(props) {
    super(props);
    if (props.base < 2 || props.base > DIGITS.length) {
      throw new Error(
        `base prop must be between 2..${DIGITS.length}`
      );
    }
  }

  _isValid(value: string): boolean {
    const validator = new RegExp(
      `^[${DIGITS.slice(0, this.props.base)}]*$`
    );
    return validator.test(value.trim().toLowerCase());
  }

  _onChange = event => {
    const value = event.currentTarget.value;
    if (this._isValid(value)) {
      this.props.onValueChange(toValue(value, this.props.base));
    }
  }

  render() {
    return (
      <input
        onChange={this._onChange}
        type="text"
        value={fromValue(this.props.value, this.props.base)}
      />
    );
  }
}