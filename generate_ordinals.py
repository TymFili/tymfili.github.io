import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
from matplotlib.patches import Rectangle

# -----------------------------------------------------------------------------
# Configuration
# -----------------------------------------------------------------------------
plt.rcParams.update({
    "font.family": "serif",
    "mathtext.fontset": "cm",
    "svg.fonttype": "path",  # Embed glyphs as pure vector curves
})

bars = []  # List of tuples: (x, height, generation)

# -----------------------------------------------------------------------------
# True Recursive Fractal Construction
# -----------------------------------------------------------------------------
# Parameters for each level of nested sub-teeth: (x_ratio, h_ratio, terms)
PARAMS = {
    1: (0.75, 0.86, 16),
    2: (0.68, 0.83, 10),
    3: (0.64, 0.80, 7),
    4: (0.60, 0.78, 5),
    5: (0.58, 0.76, 4),
}

def add_recursive_block(x0, x1, hmax, depth, gen=0):
    """Recursively populates [x0, x1) with self-similar ordinal clusters."""
    bars.append((x0, hmax, gen))
    if depth <= 0:
        return
    x_ratio, h_ratio, n_terms = PARAMS.get(depth, (0.58, 0.76, 4))
    width = x1 - x0
    for j in range(n_terms):
        u = x0 + width * (1.0 - x_ratio ** j)
        w = width * (1.0 - x_ratio) * (x_ratio ** j)
        H = hmax * (h_ratio ** j)
        add_recursive_block(u, u + w, H, depth - 1, gen + 1)

def add_dense_approach(x0, x1, hmax, stages, gen=0):
    """Constructs a transfinite sequence of increasingly dense limit stages."""
    width = x1 - x0
    r_x = 0.65
    r_h = 0.82
    for s in range(stages):
        u = x0 + width * (1.0 - r_x ** s)
        w = width * (1.0 - r_x) * (r_x ** s)
        H = hmax * (r_h ** s)
        # Each higher power has more internal recursive depth, not less!
        depth = min(s + 2, 4)
        add_recursive_block(u, u + w, H, depth, gen + 1)

# -----------------------------------------------------------------------------
# Stage Boundaries: 0 -> omega -> omega^2 -> omega^3 -> omega^omega -> epsilon_0
# -----------------------------------------------------------------------------
X0    = 0.2
X_W1  = 4.4    # omega
X_W2  = 8.0    # omega^2
X_W3  = 10.8   # omega^3
X_WW  = 13.8   # omega^omega
X_EPS = 16.8   # epsilon_0

H1, H2, H3, H4, H5 = 1.38, 1.18, 0.98, 0.80, 0.64

# 1. [0, omega): Pure discrete ticks (inherently flat)
add_recursive_block(X0,   X_W1, H1, depth=1, gen=0)

# 2. [omega, omega^2): Sequence of infinite lines
add_recursive_block(X_W1, X_W2, H2, depth=2, gen=0)

# 3. [omega^2, omega^3): Clusters of clusters
add_recursive_block(X_W2, X_W3, H3, depth=3, gen=0)

# 4. [omega^3, omega^omega): Dense sequence of higher powers (omega^4, omega^5, ...)
add_dense_approach(X_W3, X_WW, H4, stages=7, gen=0)

# 5. [omega^omega, epsilon_0): Towers of powers crowding toward epsilon_0
add_dense_approach(X_WW, X_EPS, H5, stages=8, gen=1)
bars.append((X_EPS, 0.035, 5))

# -----------------------------------------------------------------------------
# Visual Styling: Depth Palette & Dimensions
# -----------------------------------------------------------------------------
GEN_COLORS = {
    0: "#143422",  # Major limit spikes: Deepest Forest Green
    1: "#1f5436",  # Secondary limits: Rich Forest Green
    2: "#2d6a4f",  # Tertiary limits: Emerald Slate
    3: "#408a67",  # Quaternary: Medium Sage
    4: "#52b788",  # Dense fractal teeth: Vibrant Mint
    5: "#74c69d",  # Micro-teeth: Pale Mint
}

fig_w, fig_h = 16.8, 5.2
fig, (ax_wave, ax_blocks) = plt.subplots(
    2, 1, figsize=(fig_w, fig_h),
    gridspec_kw={"height_ratios": [3.4, 0.72], "hspace": 0.08},
)
fig.patch.set_facecolor("#ffffff")

# Centerline symmetry axis
ax_wave.plot([X0 - 0.2, X_EPS + 0.2], [0, 0], color="#e2e8f0", linewidth=0.7, zorder=1)

# Render all ~2,500 fractal bars
for x, h, gen in bars:
    color = GEN_COLORS.get(gen, "#52b788")
    lw = max(1.65 * (0.74 ** gen), 0.22)
    alpha = max(0.40, 1.0 - 0.07 * gen)
    ax_wave.plot([x, x], [-h, h], color=color, linewidth=lw,
                 solid_capstyle="butt", alpha=alpha, zorder=3)

# Vertical dashed drop-lines connecting major limit spikes to the bottom blocks
limits = [X0, X_W1, X_W2, X_W3, X_WW, X_EPS]
for x in limits:
    ax_wave.plot([x, x], [-1.55, 1.55], color="#cbd5e1", linestyle=":", linewidth=0.8, zorder=2)

ax_wave.set_xlim(X0 - 0.25, X_EPS + 0.25)
ax_wave.set_ylim(-1.58, 1.58)
ax_wave.axis("off")

# Outer frame
frame_x0 = X0 - 0.15
frame_w  = (X_EPS - X0) + 0.30
ax_wave.add_patch(Rectangle(
    (frame_x0, -1.55), frame_w, 3.10,
    fill=False, edgecolor="#d1d5db", linewidth=1.0, zorder=5,
))

# -----------------------------------------------------------------------------
# Bottom Interval Blocks (Now extending to epsilon_0!)
# -----------------------------------------------------------------------------
blocks = [
    (X0,   X_W1,  r"$\omega$",          "#205c3b", "white"),
    (X_W1, X_W2,  r"$\omega^2$",        "#ffffff", "#163824"),
    (X_W2, X_W3,  r"$\omega^3$",        "#2d6a4f", "white"),
    (X_W3, X_WW,  r"$\omega^{\omega}$", "#ffffff", "#163824"),
    (X_WW, X_EPS, r"$\varepsilon_0$",   "#b8c0ec", "#163824"),
]

for x0, x1, label, face, textcolor in blocks:
    ax_blocks.add_patch(Rectangle((x0, 0), x1 - x0, 1,
                                   facecolor=face, edgecolor="none", zorder=1))
    ax_blocks.text((x0 + x1) / 2, 0.5, label, ha="center", va="center",
                   fontsize=18, fontweight="bold", color=textcolor, zorder=4)

for x in limits:
    ax_blocks.plot([x, x], [0, 1], color="#cbd5e1", linewidth=1.0, zorder=3)

ax_blocks.add_patch(Rectangle((X0, 0), X_EPS - X0, 1, fill=False,
                               edgecolor="#163824", linewidth=1.2, zorder=5))

ax_blocks.set_xlim(X0 - 0.25, X_EPS + 0.25)
ax_blocks.set_ylim(0, 1)
ax_blocks.axis("off")

# Export directly to site assets
plt.savefig("assets/img/ordinals_madore.svg", format="svg",
            bbox_inches="tight", pad_inches=0.04, facecolor="white")
print(f"Generated assets/img/ordinals_madore.svg with {len(bars)} vector bars.")
