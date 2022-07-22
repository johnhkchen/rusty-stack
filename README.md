# Hamsoft Server Docker Image

This Docker image provides the following in a Debian-based image:

- Rust (Low-Level Language)
- Ruby (Simple Programming Language)
- Deno (Typescript Runtime)
- Fresh (Front-End Framework for Deno)
- Developer Tools, such as:
    - docker (container orchestration)
    - git (source tracking)
    - tmux (terminal multiplexer)
    - rsync (file synchronization across network)
    - ngrok (network connectivity service)
    - emacs (terminal-based editor for neckbeards)
    - oh my zsh (pretty shell)

This constitutes a Linux systems that is designed to serve as an IoT node residing within a Raspberry Pi.

# Philosophy

Sometimes, we just can't help but reach for all the shiny tools and hoard them, like a dragon. This is the 2022 version of that ever-present software hoard.

But hey, it's not Java + C++!

While somewhat cumbersome in terms of technologies, this stack has the following advantage:

- By providing Rust, Ruby, and Typescript in one bundle, it creates a sandbox environment that can handle a range of tasks that might be thrown towards a computer by a very erratic developer
- We have access to modern tools that perform well and can deploy a huge variety of open-source libraries
- OS-agnostic development experience tailored for learning
- Cut way down on dev environment setup
- Paves the way for using computers beyond the developer's desktop and laptop
- Using this makes me feel like a cool hacker, and I just need that sometimes. Okay? Anyway, with that out of the way, enjoy!
- The desire to hoard technologies means that adding Python, Go, etc down the line won't be too crazy because the paradigm is already one of many languages

# Proposed Architecture
- This docker image builds into a standardized dev environment that can be spun up by any docker-friendly OS
- The dev environment contains many of the tools needed to prototype a website/web-service
- Steal from open-source projects and re-host them on the dev container
- Try stuff out and update this document!