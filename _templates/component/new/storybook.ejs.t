---
to: "src/components/<%= p %>/<%= h.changeCase.paramCase(name) %>.stories.js"
---

import <%= name %> from '@/components/<%= p %>/<%= name %>.vue';

/**
 * Setup
 */
export default {
  title: '<%= p%>/<%=h.changeCase.sentenceCase(name)%>', component: <%= name %>, subComponents: { },
};

/**
 * Template
 */
const Template = (args, { argTypes }) => ({
  components: { <%= name %> },
  props: Object.keys(argTypes),
  template: '<<%= h.changeCase.paramCase(name)%> v-bind="$props"></<%= h.changeCase.paramCase(name)%>>',
});

/**
 * Stories
 */
export const Primary = Template.bind({});
Primary.args = {};
