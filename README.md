# bootc-edge-demo

<a id="readme-top"></a>
<!-- PROJECT BADGES -->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![Unlicense License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]

<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/othneildrew/Best-README-Template">
    <img src="https://raw.githubusercontent.com/containers/common/main/logos/bootc-logo-full-vert.png" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">Bootc edge demo</h3>

  <p align="center">
    A small Bootc demo for edge computing scenario
    <br />
    <a href="https://github.com/alexandremalo/bootc-edge-demo"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/alexandremalo/bootc-edge-demo">View Demo</a>
    &middot;
    <a href="https://github.com/alexandremalo/bootc-edge-demo/issues/new?labels=bug&template=bug-report---.md">Report Bug</a>
  </p>
</div>

<!-- ABOUT THE PROJECT -->
## About The Project

This small demo repo is designed to offer a small sandbox to kick tires with the Bootc technology and Red Hat product called: "RHEL Image Mode"

### Built With

[![Bootc][Bootc]][Bootc-url]

[![redhat][redhat]][redhat-url]

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- GETTING STARTED -->
## Getting Started

Before you start, make sure you have access to read/write to a *container image registry*

### Prerequisites

Install podman and set your environnement variable values to reflect your demo environment
* Install podman
  ```sh
  dnf install -y podman
  ```
* Set Env variables
  ```sh
  export BOOTC_DEMO_REGISTRY_URL=quay.io/alexmalo/bootc
  export BOOTC_DEMO_IMAGE_TAG=my-demo-img:dev
  ```

### Installation

1. Clone the repo
   ```sh
   git clone https://github.com/alexandremalo/bootc-edge-demo.git
   cd bootc-edge-demo/
   ```
2. Build container image
   ```sh
   cd container-build/
   ./run.sh
   ```
3. Convert the container image in a ISO file for provisionning
   ```sh
   cd ../disk-img-build/
   ./run.sh
   ```
4. Install the ISO in a server for provisioning a new Bootc machine

5. Enjoy testing bootc update while pushing new version and testing broken image and see the role back capabilities :)
   
<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

### Top contributors:

<a href="https://github.com/alexandremalo/bootc-edge-demo/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=alexandremalo/bootc-edge-demo" alt="contrib.rocks image" />
</a>

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- LICENSE -->
## License

Distributed under the Unlicense License. See `LICENSE.txt` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- CONTACT -->
## Contact

Alexandre Malo - [![LinkedIn][linkedin-shield]][linkedin-url] - alexandre.malo@redhat.com

Project Link: [https://github.com/alexandremalo/bootc-edge-demo](https://github.com/alexandremalo/bootc-edge-demo)

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/alexandremalo/bootc-edge-demo.svg?style=for-the-badge
[contributors-url]: https://github.com/alexandremalo/bootc-edge-demo/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/alexandremalo/bootc-edge-demo.svg?style=for-the-badge
[forks-url]: https://github.com/alexandremalo/bootc-edge-demo/network/members
[stars-shield]: https://img.shields.io/github/stars/alexandremalo/bootc-edge-demo.svg?style=for-the-badge
[stars-url]: https://github.com/alexandremalo/bootc-edge-demo/stargazers
[issues-shield]: https://img.shields.io/github/issues/alexandremalo/bootc-edge-demo.svg?style=for-the-badge
[issues-url]: https://github.com/alexandremalo/bootc-edge-demo/issues
[license-shield]: https://img.shields.io/github/license/alexandremalo/bootc-edge-demo.svg?style=for-the-badge
[license-url]: https://github.com/alexandremalo/bootc-edge-demo/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://www.linkedin.com/in/alexandre-malo
[product-screenshot]: images/screenshot.png
[Bootc]: https://img.shields.io/badge/Bootc-000000?style=for-the-badge&logo=linuxcontainers&logoColor=white
[Bootc-url]: https://docs.fedoraproject.org/en-US/bootc/
[redhat]: https://img.shields.io/badge/RedHat-000000?style=for-the-badge&logo=redhat&logoColor=white
[redhat-url]: https://www.redhat.com/en/technologies/linux-platforms/enterprise-linux/image-mode
