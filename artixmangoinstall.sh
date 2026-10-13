# mangowm & its dependencies

## basic dependencies
sudo pacman -S wayland wayland-protocols libinput libdrm libxkbcommon pixman libdisplay-info libliftoff hwdata seatd pcre2 pango cjson pixman xorg-xwayland libxcb

## wlroots
git clone -b 0.20.2 https://gitlab.freedesktop.org/wlroots/wlroots.git
cd wlroots
meson build -Dprefix=/usr
sudo ninja -C build install
cd

## scenefx
git clone -b 0.5 https://github.com/wlrfx/scenefx.git
cd scenefx
meson build -Dprefix=/usr
sudo ninja -C build install
cd

# mangowm itself
git clone https://github.com/mangowm/mango.git
cd mango
meson build -Dprefix=/usr
sudo ninja -C build install
cd





