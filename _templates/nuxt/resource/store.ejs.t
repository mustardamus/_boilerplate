---
to: src/store/<%= namePlural %>.js
---
export const state = () => {
  return {
    list: [],
    show: {}
  }
}

export const getters = {}

export const mutations = {
  setList(state, list) {
    state.list = list
  },

  setShow(state, item) {
    state.show = item
  },

  add(state, item) {
    state.list.push(item)
  },

  edit(state, { id, data }) {
    state.list = state.list.map(item => {
      if (item.id === id) {
        Object.assign(item, data)
      }

      return item
    })
  },

  delete(state, id) {
    state.list = state.list.filter(item => item.id !== id)
  }
}

const saveListToLocalStorage = state => {
  if (process.browser) {
    const json = JSON.stringify(state.list)
    localStorage.setItem('<%= namePlural %>', json)
  }
}

export const actions = {
  async loadList({ commit }) {
    if (process.browser) {
      const listJson = localStorage.getItem('<%= namePlural %>')
      const list = listJson ? JSON.parse(listJson) : []

      commit('setList', list)
    }
  },

  async load({ commit, state }, id) {
    const item = state.list.find(i => i.id === id)

    commit('setShow', item)
  },

  async add({ commit, state }, item) {
    item.data.id = Math.random()
      .toString(36)
      .substr(2, 6)

    commit('add', item.data)
    saveListToLocalStorage(state)
  },

  async edit({ commit, state }, item) {
    commit('edit', { id: item.item.id, data: item.data })
    saveListToLocalStorage(state)
  },

  async delete({ commit, state }, item) {
    commit('delete', item.id)
    saveListToLocalStorage(state)
  }
}<%= '\n' %>