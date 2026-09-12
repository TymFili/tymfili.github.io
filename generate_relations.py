import math

# -----------------------------------------------------------------------------
# Configuration Table for the 16 Cells: (domain_offsets, codomain_offsets, edges)
# Offset format: (delta_y, is_active)
# -----------------------------------------------------------------------------
CONFIG = {
    (0,0): ([(-22,True), (22,True)], [(-22,True), (22,True)], [(0,0),(1,1)]),
    (0,1): ([(-8,True)], [(-8,True), (24,False)], [(0,0)]),
    (0,2): ([(-8,True), (24,False)], [(-8,True)], [(0,0)]),
    (0,3): ([(-8,True), (24,False)], [(-8,True), (24,False)], [(0,0)]),
    (1,0): ([(-22,True), (22,True)], [(0,True)], [(0,0),(1,0)]),
    (1,1): ([(-22,True), (22,True)], [(-10,True), (26,False)], [(0,0),(1,0)]),
    (1,2): ([(-24,True), (2,True), (28,False)], [(-11,True)], [(0,0),(1,0)]),
    (1,3): ([(-24,True), (2,True), (28,False)], [(-11,True), (26,False)], [(0,0),(1,0)]),
    (2,0): ([(0,True)], [(-22,True), (22,True)], [(0,0),(0,1)]),
    (2,1): ([(-10,True)], [(-22,True), (4,True), (28,False)], [(0,0),(0,1)]),
    (2,2): ([(-10,True), (26,False)], [(-22,True), (22,True)], [(0,0),(0,1)]),
    (2,3): ([(-10,True), (26,False)], [(-22,True), (4,True), (28,False)], [(0,0),(0,1)]),
    (3,0): ([(-22,True), (22,True)], [(-22,True), (22,True)], [(0,0),(0,1),(1,1)]),
    (3,1): ([(-22,True), (22,True)], [(-22,True), (4,True), (28,False)], [(0,0),(0,1),(1,1)]),
    (3,2): ([(-24,True), (2,True), (28,False)], [(-22,True), (22,True)], [(0,0),(0,1),(1,1)]),
    (3,3): ([(-24,True), (2,True), (28,False)], [(-22,True), (4,True), (28,False)], [(0,0),(0,1),(1,1)]),
}

def build_svg():
    width, height = 1200, 940
    grid_x0, grid_y0 = 360, 160
    col_w, row_h = 190, 180
    grid_w, grid_h = 4 * col_w, 4 * row_h
    r_dot = 7.5

    svg = [f'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 {width} {height}" width="100%" height="100%" font-family="system-ui, -apple-system, sans-serif">']
    
    # SVG Definitions
    svg.append('''<defs>
      <marker id="arr" viewBox="0 0 10 10" refX="6" refY="5" markerWidth="6" markerHeight="6" orient="auto-start-reverse">
        <path d="M 0 1.5 L 8 5 L 0 8.5 z" fill="#2d3748" />
      </marker>
      <filter id="shadow" x="-5%" y="-5%" width="110%" height="110%">
        <feDropShadow dx="0" dy="4" stdDeviation="6" flood-color="#000000" flood-opacity="0.06"/>
      </filter>
      <filter id="glow" x="-10%" y="-10%" width="120%" height="120%">
        <feDropShadow dx="0" dy="2" stdDeviation="4" flood-color="#000000" flood-opacity="0.08"/>
      </filter>
    </defs>''')
    
    # White background card
    svg.append(f'<rect width="{width}" height="{height}" fill="#ffffff" rx="16"/>')
    
    # Top Banners
    svg.append(f'<rect x="{grid_x0}" y="70" width="{2*col_w}" height="80" fill="#fff9db" rx="8"/>')
    svg.append(f'<path d="M {grid_x0} 95 L {grid_x0} 75 L {grid_x0 + 2*col_w} 75 L {grid_x0 + 2*col_w} 95" fill="none" stroke="#f08c00" stroke-width="2.5"/>')
    svg.append(f'<text x="{grid_x0 + col_w}" y="60" text-anchor="middle" font-size="22" font-weight="700" fill="#d9480f" font-style="italic">Left Total</text>')
    
    svg.append(f'<rect x="{grid_x0 + 2*col_w}" y="70" width="{2*col_w}" height="80" fill="#f1f3f5" rx="8"/>')
    svg.append(f'<path d="M {grid_x0 + 2*col_w} 95 L {grid_x0 + 2*col_w} 75 L {grid_x0 + 4*col_w} 75 L {grid_x0 + 4*col_w} 95" fill="none" stroke="#495057" stroke-width="2.5"/>')
    svg.append(f'<text x="{grid_x0 + 3*col_w}" y="60" text-anchor="middle" font-size="22" font-weight="700" fill="#495057" font-style="italic">Not Left Total</text>')
    
    # Title
    svg.append('<text x="70" y="90" font-size="36" font-weight="800" fill="#111827" letter-spacing="-0.5">Relations</text>')
    
    # Left Brackets
    svg.append(f'<path d="M 220 {grid_y0 + 10} L 200 {grid_y0 + 10} L 200 {grid_y0 + 2*row_h - 10} L 220 {grid_y0 + 2*row_h - 10}" fill="none" stroke="#2b8a3e" stroke-width="3"/>')
    svg.append(f'<text x="180" y="{grid_y0 + row_h + 6}" text-anchor="end" font-size="24" font-weight="700" fill="#2b8a3e" font-style="italic">Single valued</text>')
    
    svg.append(f'<path d="M 220 {grid_y0 + 2*row_h + 10} L 200 {grid_y0 + 2*row_h + 10} L 200 {grid_y0 + 4*row_h - 10} L 220 {grid_y0 + 4*row_h - 10}" fill="none" stroke="#c92a2a" stroke-width="3"/>')
    svg.append(f'<text x="180" y="{grid_y0 + 3*row_h + 6}" text-anchor="end" font-size="24" font-weight="700" fill="#c92a2a" font-style="italic">Multivalued</text>')

    # 4 Quadrants
    svg.append(f'<rect x="{grid_x0}" y="{grid_y0}" width="{2*col_w}" height="{2*row_h}" fill="#ebfbee" stroke="#b2f2bb" stroke-width="1.5" rx="8" filter="url(#shadow)"/>')
    svg.append(f'<text x="{grid_x0 + col_w}" y="{grid_y0 + 2*row_h - 18}" text-anchor="middle" font-size="20" font-weight="700" fill="#2b8a3e" font-style="italic">(Total) Functions</text>')
    
    svg.append(f'<rect x="{grid_x0 + 2*col_w}" y="{grid_y0}" width="{2*col_w}" height="{2*row_h}" fill="#e7f5ff" stroke="#a5d8ff" stroke-width="1.5" rx="8" filter="url(#shadow)"/>')
    svg.append(f'<text x="{grid_x0 + 3*col_w}" y="{grid_y0 + 2*row_h - 18}" text-anchor="middle" font-size="20" font-weight="700" fill="#1971c2" font-style="italic">Partial “Functions”</text>')
    
    svg.append(f'<rect x="{grid_x0}" y="{grid_y0 + 2*row_h}" width="{grid_w}" height="{2*row_h}" fill="#fff5f5" stroke="#ffc9c9" stroke-width="1.5" rx="8" filter="url(#shadow)"/>')
    svg.append(f'<text x="{grid_x0 + grid_w/2 + 150}" y="{grid_y0 + 4*row_h - 20}" text-anchor="middle" font-size="24" font-weight="700" fill="#e03131" font-style="italic">Non-Functions</text>')
    
    # Bijections highlight
    svg.append(f'<rect x="{grid_x0 + 8}" y="{grid_y0 + 8}" width="{col_w - 16}" height="{row_h - 16}" fill="#d3f9d8" stroke="#40c057" stroke-width="2" rx="12"/>')
    svg.append(f'<text x="{grid_x0 + 24}" y="{grid_y0 + 36}" font-size="19" font-weight="800" fill="#2b8a3e" font-style="italic">Bijections</text>')

    # Surjective Vertical Capsules (Cols 0 & 2)
    for c_idx in [0, 2]:
        cx = grid_x0 + c_idx * col_w + 10
        cw = col_w - 20
        svg.append(f'<rect x="{cx}" y="95" width="{cw}" height="{grid_h + 50}" rx="28" fill="rgba(16, 152, 230, 0.08)" stroke="#1098ad" stroke-width="2.5" filter="url(#glow)"/>')
        svg.append(f'<rect x="{cx + 10}" y="90" width="{cw - 20}" height="42" rx="10" fill="#e3fafc" stroke="#1098ad" stroke-width="1.2"/>')
        svg.append(f'<text x="{cx + cw/2}" y="108" text-anchor="middle" font-size="15" font-weight="700" fill="#0b7285">Surjective</text>')
        svg.append(f'<text x="{cx + cw/2}" y="124" text-anchor="middle" font-size="11" font-style="italic" fill="#15aabf">aka ‘Onto’</text>')
        
    # Injective Horizontal Capsules (Rows 0 & 2)
    for r_idx in [0, 2]:
        ry = grid_y0 + r_idx * row_h + 10
        rh = row_h - 20
        svg.append(f'<rect x="230" y="{ry}" width="{grid_w + 115}" height="{rh}" rx="28" fill="rgba(174, 62, 201, 0.08)" stroke="#ae3ec9" stroke-width="2.5" filter="url(#glow)"/>')
        svg.append(f'<rect x="235" y="{ry + 20}" width="115" height="48" rx="10" fill="#f8f0fc" stroke="#ae3ec9" stroke-width="1.2"/>')
        svg.append(f'<text x="292" y="{ry + 41}" text-anchor="middle" font-size="15" font-weight="700" fill="#862e9c">Injective</text>')
        svg.append(f'<text x="292" y="{ry + 58}" text-anchor="middle" font-size="11" font-style="italic" fill="#be4bdb">aka ‘One-to-one’</text>')

    # Helper rendering functions
    def node_svg(x, y, active, is_domain):
        fill = ("#2b8a3e" if active else "#ebfbee") if is_domain else ("#c92a2a" if active else "#fff5f5")
        stroke = ("#1e4620" if active else "#94d82d") if is_domain else ("#860000" if active else "#ff8787")
        dash = '' if active else ' stroke-dasharray="3,2"'
        return f'<circle cx="{x:.1f}" cy="{y:.1f}" r="{r_dot}" fill="{fill}" stroke="{stroke}" stroke-width="1.8"{dash}/>'

    def arrow_svg(x1, y1, x2, y2):
        angle = math.atan2(y2 - y1, x2 - x1)
        sx = x1 + r_dot * math.cos(angle)
        sy = y1 + r_dot * math.sin(angle)
        ex = x2 - (r_dot + 3.0) * math.cos(angle)
        ey = y2 - (r_dot + 3.0) * math.sin(angle)
        return f'<line x1="{sx:.1f}" y1="{sy:.1f}" x2="{ex:.1f}" y2="{ey:.1f}" stroke="#2d3748" stroke-width="2.2" marker-end="url(#arr)"/>'

    # Render all 16 cells from CONFIG
    for (r, c), (dom_spec, cod_spec, edges) in CONFIG.items():
        cx = grid_x0 + c * col_w + col_w / 2
        cy = grid_y0 + r * row_h + row_h / 2
        dx, rx = cx - 44, cx + 44
        
        dom = [(dx, cy + dy, act) for dy, act in dom_spec]
        cod = [(rx, cy + dy, act) for dy, act in cod_spec]
        
        for eu, ev in edges:
            svg.append(arrow_svg(dom[eu][0], dom[eu][1], cod[ev][0], cod[ev][1]))
        for x, y, act in dom:
            svg.append(node_svg(x, y, act, True))
        for x, y, act in cod:
            svg.append(node_svg(x, y, act, False))

    svg.append('</svg>')
    return '\n'.join(svg)

if __name__ == '__main__':
    with open('assets/img/relations_classification.svg', 'w', encoding='utf-8') as f:
        f.write(build_svg())
    print("Done! assets/img/relations_classification.svg generated successfully.")
