(function(w, d, undefined) {
  const menu_level_2 = d.querySelector('.menu-niveau-2')
  const menu_level_1 = d.querySelector('.menu-niveau-1')

  w.addEventListener('DOMContentLoaded', () => (
    d.querySelectorAll('.menu-niveaux').forEach(({ classList }) => classList.add('in'))
  ))

  // Update menu menu_level_ 2
  const menuItem = item => {
    if (!item.className.includes('current-menu-item')) {
      return
    }    

    const regex = /menu\-item\-([0-9]+)/;
    const result = regex.exec(item.className)
    if (result) {
      current_item = result[0]
      const old_item = menu_level_2.querySelector('.current-menu-item')
      if (old_item) {
        old_item.classList.remove('current-menu-item', 'current_page_item')
      }
      menu_level_2.querySelector(`.nav > .${current_item}`).classList.add('current-menu-item', 'current_page_item')
      setTimeout(() => menu_level_2.classList.add('in'), 400)
    }
  }

  // Update menu level2 after AWS Success
  d.addEventListener('AWSSuccess', () => {
    menu_level_2.classList.remove('in')
    menu_level_1.querySelectorAll('.nav > .menu-item').forEach(menuItem)
  })
} (window, document))
