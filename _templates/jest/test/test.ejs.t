---
to: tests/<%= filePath.replace('.js', '.test.js').replace('.vue', '.test.js') %>
---
<%
  isVue = filePath.includes('.vue')
  split = filePath.split('/')
  basename = split[split.length - 1].split('.')[0]
  camelCased = h.changeCase.camelCase(basename)
  srcDir = '../'.repeat(split.length) + 'src/'
-%>
<% if(isVue) { -%>
/**
 * @jest-environment jsdom
 */
import { mount } from '@vue/test-utils'
import Component from '<%= srcDir + filePath %>'
<% } else { -%>
const <%= camelCased %> = require('<%= srcDir + filePath %>')
<% } %>
describe('<%= describe %>', () => {
  it('should <%= itShould %>', () => {
<% if(isVue) { -%>
    const wrapper = mount(Component)
    expect(wrapper.isVueInstance()).toBeTruthy()
<% } else { -%>
    expect(<%= camelCased %>()).toBe(true)
<% } -%>
  })
})<%= '\n' %>