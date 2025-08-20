function gk --wraps='gitk &' --wraps='command gitk &' --wraps=gitk --description 'launch gitk in background'
    command gitk $argv &
end
