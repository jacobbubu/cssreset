cssreset = require '../index'
cssreset()

div = require('easy-div')()
div.style.background = '#aaa'
div.innerHTML = """
    <ul>
        <li> 1 <li/>
        <li> 2 <li/>
        <li> 3 <li/>
    </ul>
    <table style="width:100%">
        <tr>
            <td>Jill</td>
            <td>Smith</td>
            <td>50</td>
        </tr>
        <tr>
            <td>Eve</td>
            <td>Jackson</td>
            <td>94</td>
        </tr>
    </table>
"""