const users =[];

class User {
  constructor({id, name, email}) {
    this.id = id
    this.name = name
    this.email = email
    users.push(this)

  }

  static render() {
    return fetch("/users")
    .then(response => response.json())
    .then(response => {
      response.forEach(function(user) {
        user = new User(user)
        user.render()
      })
      // render for the first user by default
      users[0].switch()
    })
  }

  render() {
    let container = document.querySelector('.sidebar')
    let user = document.createElement('div')
    user.textContent = this.name
    user.addEventListener('click', () => {
      Array.from(container.children).forEach(e =>{
        e.classList.remove('active')
      })
      this.switch()
      user.classList.add("active")
    })
    if (container.childElementCount === 0) {
      user.classList.add("active")
    }
    container.append(user)
  }

  switch() {
    // click event that re-renders the chosen penpal list
    User.active = this
    Penpal.render()
  }

  
}

