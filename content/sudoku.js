.pragma library

let sudoku = [[],[],[]]

sudoku[0] = [['2','','5','','','7','','','6','4','','','9','6','','','2','','','','','','8','','','4','5','9','8','','','7','4','','','','5','7','','8','','2','','6','9','','','','6','3','','','5','7','7','5','','','2','','','','','','6','','','5','1','','','2','3','','','4','','','5','','8'],
['','6','','','','5','7','','2','','','4','','9','6','','1','','8','7','1','3','','2','','','','5','','','','7','1','3','','','','3','','','5','','','7','','','','7','8','2','','','','5','','','','5','','9','6','8','7','','8','','2','6','','1','','','7','','6','4','','','','2',''],
['4', '7','','9','','1','6','','5','','2','','3','','','','8','4','','','','','','','','','1','','1','4','7','','8','','5','','6','','','2','','3','','','9','','3','','6','','5','8','1','','8','','','','','','','','','5','9','','','','4','','2','','7','','1','5','','2','','9','8'],
['5','','','','4','','6','9','7','8','','','','','2','','4','','','','9','5','','3','1','','8','','','1','4','3','','','7','','','','','7','','9','','','','','7','','','6','5','4','','','1','','3','2','','4','7','','','','2','','9','','','','','4','6','9','4','','1','','','','5'],
['','','5','1','4','','','','8','3','','8','','','','','7','1','','1','','','7','8','','4','','','','','','','1','8','','6','','2','','8','','9','','3','','8','','7','4','','','','','','','3','','5','9','','','8','','7','8','','','','','3','','4','6','','','','8','4','7','',''],
['2','','3','','6','','','','8','','7','','','5','1','3','','','','5','9','','','','','','','4','','2','6','3','','','5','9','','','','','9','','','','','3','9','','','1','4','2','','6','','','','','','','4','2','','','','1','8','4','','','3','','7','','','','2','','9','','5'],
['','7','','3','6','2','','','4','6','3','1','5','8','','','','9','','','','','','','6','','','1','','','2','','6','','','5','','5','','','7','','','2','','2','','','1','','9','','','8','','','5','','','','','','','3','','','','9','1','4','5','2','7','','','8','4','5','','3',''],
['','','','5','1','2','','6','','2','5','','','','','9','1','','1','7','','','','6','','5','8','','','','','8','','1','','','5','1','','3','','4','','9','6','','','2','','6','','','','','9','2','','4','','','','8','7','','4','3','','','','','2','1','','6','','2','7','1','','','']]

sudoku[1] = [['','2','4','3','8','','','','','','','','','','6','','','7','','5','8','','','','4','','','4','','','','1','','','','','','','','7','','5','','','','','','','','2','','','','8','','','1','','','','6','7','','3','','','5','','','','','','','','','','4','9','2','1',''],
['8','','','','','','','','3','5','','','8','','','7','','4','','','','','','','','6','','','6','','9','8','','1','','','','','7','','','','4','','','','','8','','6','1','','9','','','5','','','','','','','','3','','2','','','4','','','8','1','','','','','','','','5'],
['','','8','','','4','','','3','','9','','','','','','6','1','','','','3','','','','','','','','','4','','','7','5','','','','3','7','','5','6','','','','5','9','','','6','','','','','','','','','3','','','','5','4','','','','','','9','','6','','','8','','','5','',''],
['','','2','','','4','','','8','','','','','','','','9','3','','','','9','2','5','','','','','','','','','','1','','4','','','3','8','','9','5','','','6','','1','','','','','','','','','','2','5','1','','','','3','4','','','','','','','','2','','','7','','','8','',''],
['','','','','8','','','','5','','','1','9','','','','','','7','','','','','','','1','6','','','','1','','','6','','9','3','','5','','','','1','','4','6','','8','','','3','','','','5','6','','','','','','','2','','','','','','5','4','','','9','','','','2','','','',''],
['','','8','','','','','','','','','','3','','7','','5','','','2','','','','','9','','3','','','','','9','','','6','2','2','','4','','','','8','','1','6','5','','','7','','','','','4','','9','','','','','1','','','1','','5','','8','','','','','','','','','','2','',''],
['7','1','','','6','8','','','','','','','2','','','','8','','','3','','','','','1','','','','','','5','','','','2','','1','','4','','','','8','','3','','8','','','','7','','','','','','6','','','','','9','','','2','','','','6','','','','','','','1','9','','','3','5'],
['','','','','','3','4','','7','2','','','9','','','','5','','','','','','8','5','2','','','1','','','8','','','','','','','','3','','','','8','','','','','','','','4','','','6','','','5','2','4','','','','','','3','','','','7','','','8','4','','6','1','','','','','']]

sudoku[2] = [['','','','','','','2','','8','9','2','','','','4','','','','','','','2','','8','','7','1','','3','6','','','','','','','','','','7','','9','','','','','','','','','','6','4','','8','6','','4','','1','','','','','','','9','','','','2','7','2','','9','','','','','',''],
['','','9','','','','1','','','','','4','','3','','','','','','','','5','6','7','','3','','','','','','','','','1','7','8','','1','','','','2','','4','2','9','','','','','','','','','7','','3','5','1','','','','','','','','4','','6','','','','','8','','','','9','',''],
['','4','','1','3','','','','8','','','','','','5','6','','','','','','','','','','7','3','','','','6','','1','','','','8','','','','','','','','4','','','','5','','2','','','','7','1','','','','','','','','','','8','4','','','','','','2','','','','9','6','','5',''],
['4','','','1','','','','','','','','9','8','7','','','','1','3','','','','','','','9','','','','','','','7','','3','','','4','3','','','','1','6','','','8','','2','','','','','','','6','','','','','','','2','7','','','','5','8','6','','','','','','','','4','','','9'],
['','6','','3','2','','7','','','','2','','','','','','','4','','','','','1','7','','','','','5','7','','','','','6','','','','','5','','6','','','','','8','','','','','5','2','','','','','1','4','','','','','5','','','','','','','8','','','','3','','7','2','','9',''],
['','9','','','','','8','4','','4','','','','','8','','','5','','','','6','7','','3','','','','4','','7','','','','','','6','','','','','','','','9','','','','','','5','','7','','','','7','','3','1','','','','2','','','','','','','','1','','3','9','','','','','5',''],
['7','','6','','','','','1','','','9','','','4','','5','','','','2','','','','9','6','','','6','','','','3','','','','7','','','','','','','','','','1','','','','5','','','','8','','','9','1','','','','5','','','','5','','7','','','4','','','1','','','','','2','','3'],
['','','7','','','','','','5','','2','','','','3','9','','','','','','','','7','','6','','','','9','','','','2','','4','3','','','','9','','','','1','8','','2','5','','','7','','','','4','','6','','','','','','','','3','7','','','','5','','6','','','','','','8','','']]

let diffuculty = 0

function difficultyButtonPressed(text, sudokutable){
    if (text === 'Easy'){
        diffuculty = 0
    }
    else if(text === 'Medium'){
        diffuculty = 1
    }
    else{
        diffuculty = 2
    }
    selected = -1
    currentSudoku = -1
    getRandom()
    sudokutable.updateData(current)
}

let current = []

let rowElements = []
let columnElements = []
let squareElements = []

let indexesRows = []
let indexesColumns = []
let indexesSquares = []

let currentSudoku = -1

let stackUndo = []
let stackRedo = []

let filled = 0

function addOne(value,x){
    current[x] = value
    let i = Math.floor(x/9)
    let j = x%9
    let square = getSquare(x)
    let num = parseInt(value, 10)
    indexesRows[i][num-1] = x
    rowElements[i].add(value)
    indexesColumns[j][num-1] = x
    columnElements[j].add(value)
    indexesSquares[square][num-1] = x
    squareElements[square].add(value)
}

function removeOne(value,x){
    current[x] = ''
    let i = Math.floor(x/9)
    let j = x%9
    let square = getSquare(x)
    let num = parseInt(value, 10)
    indexesRows[i][num-1] = -1
    rowElements[i].delete(value)
    indexesColumns[j][num-1] = -1
    columnElements[j].delete(value)
    indexesSquares[square][num-1] = -1
    squareElements[square].delete(value)
}

function addAll(){
    rowElements = [new Set(),new Set(),new Set(),new Set(),new Set(),new Set(),new Set(),new Set(),new Set()]
    columnElements = [new Set(),new Set(),new Set(),new Set(),new Set(),new Set(),new Set(),new Set(),new Set()]
    squareElements = [new Set(),new Set(),new Set(),new Set(),new Set(),new Set(),new Set(),new Set(),new Set()]
    indexesRows = Array(9).fill(-1).map(x => Array(9).fill(-1))
    indexesColumns = Array(9).fill(-1).map(x => Array(9).fill(-1))
    indexesSquares = Array(9).fill(-1).map(x => Array(9).fill(-1))
    filled = 0
    for (let x = 0; x < 81; x++){
        if (current[x] !== ''){
            filled++
            addOne(current[x],x)
        }
    }
}

function checkOne(x, value){
    let i = Math.floor(x/9)
    let j = x%9
    if (!rowElements[i].has(value) && !columnElements[j].has(value) && !squareElements[getSquare(x)].has(value)){
        return true
    }
    return false
}

function getRandom(){
    let newSudoku = Math.floor(Math.random() * sudoku[diffuculty].length)
    while(newSudoku == currentSudoku){
        newSudoku = Math.floor(Math.random() * sudoku[diffuculty].length)
    }
    currentSudoku = newSudoku
    clearAll()
}

function clearAll(){
    current = [...sudoku[diffuculty][currentSudoku]]
    addAll()
    selected = -1
    stackUndo = []
    stackRedo = []
}

function solve(x){
    if (x === 81){
        return true
    }
    if (current[x] === ''){
        for (const c of '123456789') {
            if (checkOne(x,c)){
                addOne(c,x)
                let s = solve(x+1)
                if (s){
                    return true
                }
                else{
                    removeOne(current[x],x)
                }
            }
        }
        return false
    }
    else{
        let s = solve(x+1)
        return s
    }
}

function gameButtonPressed(text, sudokutable){
    if (text === 'Undo'){
        undo(sudokutable)
    }
    else if (text === 'Redo'){
        redo(sudokutable)
    }
    else if (text === 'Clear'){
        clearOne(sudokutable)
    }
    else if(text === 'Clear all'){
        if (filled > 0 || stackUndo.length > 0 || stackRedo.length > 0){
            clearAll()
            sudokutable.updateData(current)
            updateSelectTable(sudokutable)
        }
    }
    else if (text === 'Solve'){
        if (filled !== 81){
            clearAll()
            solve(0)
            sudokutable.updateData(current)
            updateSolvedTable(sudokutable)
            filled = 81
        }
    }
    else{
        getRandom()
        sudokutable.updateData(current)
    }
}

let selected = -1

function setSelected(x){
    selected = x
}

function isSelected(x){
    return selected != -1 && x === selected
}

function isSelectedRowColumn(x) {
    if (selected != -1 && (Math.floor(x/9) == Math.floor(selected/9) || x%9 == selected%9)){
        return true
    }
    return false
}

function isSelectedSquare(x) {
    if (selected != -1 && getSquare(x)===getSquare(selected)){
        return true
    }
    return false
}

function getSquare(x) {
    let i = Math.floor(x/9)
    let j = x%9
    if (Math.floor(i/3) == 0){
        if (Math.floor(j/3) == 0){
            return 0
        }
        else if (Math.floor(j/3) == 1){
            return 1
        }
        else {
            return 2
        }
    }
    else if (Math.floor(i/3) == 1){
        if (Math.floor(j/3) == 0){
            return 3
        }
        else if (Math.floor(j/3) == 1){
            return 4
        }
        else {
            return 5
        }
    }
    else {
        if (Math.floor(j/3) == 0){
            return 6
        }
        else if (Math.floor(j/3) == 1){
            return 7
        }
        else {
            return 8
        }
    }
}

function updateSelectTable(sudokutable){
    if(filled !== 81){
        for (let i = 0; i < 81; i++) {
            if (isSelected(i)){
                sudokutable.setColor(i, "#bbdefb")
            }
            else if (isSelectedRowColumn(i) || isSelectedSquare(i)){
                sudokutable.setColor(i, "#e2ebf3")
            }
            else{
                sudokutable.setColor(i, "white")
            }
        }
    }
}

function numButtonPressed(text, sudokutable) {
    if (filled != 81 && selected !== -1 && sudoku[diffuculty][currentSudoku][selected] === '' && current[selected] !== text){
        if (checkOne(selected, text)){
            stackRedo = []
            stackUndo.push([current[selected],text,selected])
            if (current[selected] === ''){
                filled++
            }
            else{
                removeOne(current[selected],selected)
            }
            addOne(text,selected)
            sudokutable.updateData(current)
            if (filled !== 81){
                updateSelectTable(sudokutable)
            }
            else{
                updateSolvedTable(sudokutable)
            }
        }
        else{
            let i = Math.floor(selected/9)
            let j = selected%9
            let square = getSquare(selected)
            let num = parseInt(text, 10)
            let r = indexesRows[i][num-1]
            let c = indexesColumns[j][num-1]
            let s = indexesSquares[square][num-1]
            if (r !== -1)
            {
                sudokutable.wrong(r)
            }
            if (c !== -1 && c !== r)
            {
                sudokutable.wrong(c)
            }
            if (s !== -1 && s !== r && s !== c)
            {
                sudokutable.wrong(s)
            }
        }
    }
}

function clearOne(sudokutable){
    if (filled != 81 && selected !== -1 && sudoku[diffuculty][currentSudoku][selected] === '' && current[selected] !== ''){
        stackRedo = []
        stackUndo.push([current[selected],'',selected])
        filled--
        removeOne(current[selected],selected)
        sudokutable.updateData(current)
        updateSelectTable(sudokutable)
    }
}

function updateSolvedTable(sudokutable){
    for (let i = 0; i < 81; i++) {
        sudokutable.setColor(i, "#00FF7F")
    }
}

function undoRedo(sudokutable, was, became, x){
    if(became === ''){
        addOne(was,x)
        filled++
        sudokutable.updateData(current)
        updateSelectTable(sudokutable)
    }
    else{
        removeOne(became,x)
        if(was === ''){
            filled--
            sudokutable.updateData(current)
            updateSelectTable(sudokutable)
        }
        else{
            addOne(was,x)
            sudokutable.updateData(current)
            updateSelectTable(sudokutable)
        }
    }
}

function undo(sudokutable){
    if(stackUndo.length > 0 && filled !== 81){
        let last = stackUndo.pop()
        stackRedo.push(last)
        let was = last[0]
        let became = last[1]
        let x = last[2]
        undoRedo(sudokutable, was, became, x)
    }
}

function redo(sudokutable){
    if(stackRedo.length > 0 && filled !== 81){
        let last = stackRedo.pop()
        stackUndo.push(last)
        let became = last[0]
        let was = last[1]
        let x = last[2]
        undoRedo(sudokutable, was, became, x)
    }
}
