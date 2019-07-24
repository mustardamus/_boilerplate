import { storiesOf } from '@storybook/vue'
import { withKnobs, text } from '@storybook/addon-knobs'
import { action } from '@storybook/addon-actions'
import TheFooter from '../src/components/the-footer.vue'

const stories = storiesOf('components|footer', module)

stories.addDecorator(withKnobs)

const $wrapper = {
  components: { TheFooter },
  mounted() {
    this.onSomeAction({ works: true })
  },
  methods: {
    onSomeAction(event) {
      action('someAction')(event)
    }
  }
}

stories.add(
  'Footer Display',
  () => ({
    ...$wrapper,
    props: {
      text: {
        default: text('Footer Text', 'This is the default text')
      }
    },
    template: '<the-footer @someAction="onSomeAction" />'
  }),
  {
    notes: 'These are some notes, can also be imported `{ markdown }`'
  }
)
