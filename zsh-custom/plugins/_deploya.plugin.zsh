#compdef deploya
#autoload

local -a sites

_deploya() {
  sites=(`deploya --sites`)
  compadd -a sites
}
compdef _deploya deploya