findFirstChildInHead = ->
    document.head.firstChild

resetBoxModel = """
    margin: 0;
    padding: 0;
    border: 0;
    outline: 0;
"""

resetFont = """
    font-weight: inherit;
    font-style: inherit;
    font-family: inherit;
    font-size: 100%;
    vertical-align: baseline;
"""

resetBody = """
    line-height: 1;
    color: black;
    background: white;
"""

resetTable = """
    border-collapse: separate;
    border-spacing: 0;
    vertical-align: middle;
"""

resetTableCell = """
    text-align: left;
    font-weight: normal;
    vertical-align: middle;
"""

resetHtml5 = """
    article, aside, canvas, details, figcaption,
    figure, footer, header, hgroup, menu, nav,
    section, summary, main {
    #{resetBoxModel}
    display: block;
    }
    audio, canvas, video {
        display inline-block;
        *display inline;
        *zoom 1;
    }
    audio:not([controls]),[hidden] {
        display none;
    }
"""

globalReset = """
    html, body, div, span, applet, object, iframe,
    h1, h2, h3, h4, h5, h6, p, blockquote, pre,
    a, abbr, acronym, address, big, cite, code,
    del, dfn, em, img, ins, kbd, q, s, samp,
    small, strike, strong, sub, sup, tt, var,
    dl, dt, dd, ol, ul, li,
    fieldset, form, label, legend,
    table, caption, tbody, tfoot, thead, tr, th, td {
    #{resetBoxModel}
    #{resetFont}
    }
    body {
    #{resetBody}
    }
    table {
    #{resetTable}
    }
    caption, th, td {
    #{resetTableCell}
    }
    a img {
        border: none
    }
#{resetHtml5}
"""

module.exports = ->
    css = document.createElement 'style'
    css.type = 'text/css'
    css.innerHTML = globalReset

    firstChild = findFirstChildInHead()
    if firstChild?
        document.head.insertBefore css, firstChild
    else
        document.head.appendChild css
    css