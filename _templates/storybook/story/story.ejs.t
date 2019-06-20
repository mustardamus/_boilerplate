---
to: stories/<% if(locals.subfolder) { %><%= subfolder + '/' %><% } %><%= name %>.stories.js
---
import { storiesOf } from '@storybook/svelte'
import Button from '../src/components/button.svelte'
import { action } from '@storybook/addon-actions'
import { withKnobs, text } from '@storybook/addon-knobs'

const stories = storiesOf('Button Component', module)

stories.addDecorator(withKnobs)

stories.add(
  'of something',
  () => ({
    Component: MyButton,
    props: {
      buttonText: text('buttonText', 'This is a button')
    },
    on: {
      click: event => {
        action('clicked')(event)
      }
    }
  }),
  {
    notes: 'Some notes'
  }
)<%= '\n' %>