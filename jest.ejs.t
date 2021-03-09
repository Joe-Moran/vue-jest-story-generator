---
to: "src/components/<%= p %>/__tests__/<%= h.changeCase.kebab(name) %>.test.js"
---

import { shallowMount } from '@vue/test-utils';
import <%=name%> from '@/components/<%= p %>/<%= name %>.vue';

describe('<%= name %>.vue', () => {
  /**
    * Variables
    */
  const defaultProps = {};
  let wrapper;

  /**
    * Setup
    */
  beforeEach(() => {
    wrapper = shallowMount(<%= name %>, { propsData: defaultProps, slots: {} });
  });

  afterEach(() => {
    wrapper.destroy();
  });

  /**
    * I/O
    */
  it('Renders something', () => {
    expect(wrapper.find().exists()).toBe(true);
  });
});
