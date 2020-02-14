// Run by creating an object in a view with id='typing-node' then adding <%= javascript_pack_tag 'typing' %>
// at the bottom of the view (so it renders after dom is created)

import React, { Component } from 'react'
import ReactDOM from 'react-dom'
import Typical from 'react-typical'

const steps = [
    'Hello 👋', 1500,
    'This site is currently under construction', 1000,
    'This site will serve as a blog for my projects and research', 1000,
    'Check out the source code at https://github.com/L4r1k/L4r1k-Blog', 3000,
];

class App extends Component {
    render () {
        return (
            <div>
                <Typical wrapper="span" steps={steps} loop={Infinity} className={''} />
            </div>
        )
    }
}

ReactDOM.render(<App />, document.getElementById('typing-node'));
