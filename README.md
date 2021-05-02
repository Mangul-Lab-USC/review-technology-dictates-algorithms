# Technology dictates algorithms: Recent developments in read alignment

[![Preprint Available](https://img.shields.io/badge/Preprint-online-green.svg)](https://arxiv.org/abs/2003.00110) [![MIT Licence](https://badges.frapsoft.com/os/mit/mit.svg?v=103)](https://opensource.org/licenses/mit-license.php)

Aligning sequencing reads onto a reference is an essential step of the majority of genomic analysis pipelines. Computational algorithms for read alignment have evolved in accordance with technological advances, leading to today’s diverse array of alignment methods. We provide a systematic survey of algorithmic foundations and methodologies across 107 alignment methods, for both short and long reads. We provide a rigorous experimental evaluation of 11 read aligners to demonstrate the effect of these underlying algorithms on speed and efficiency of read alignment. We discuss how general alignment algorithms have been tailored to the specific needs of various domains in biology.

* [Directory Structure](#directory)
* [How to cite this study](#cite)
* [Datasets](#datasets)
* [Reproducing results](#reproducing-results)
* [License](#license)
* [Contact](#contact)


##  <a name="directory"></a>Directory structure
```
review-technology-dictates-algorithms-master
├───1. figures
├───2. multi_panel
├───3. notebooks
├───4. raw_data
├───5. scripts
├───6. summary_data
```            

1. In the "Datasets" directory, you will find all figures used in our study.
2. 


##  <a name="datasets"></a>Datasets
We used 10 WGS datasets with the following accession numbers: ERR009309,ERR013127,ERR013138,ERR045708,ERR050158,ERR162843,ERR181410,ERR183377,SRR061640,SRR360549



## <a name="cite"></a>How-to-cite-this-study?

If you use our study in your work, please cite:

> Mohammed Alser, Jeremy Rotman, Kodi Taraszka, Huwenbo Shi, Pelin Icer Baykal, Harry Taegyun Yang, Victor Xue, Sergey Knyazev, Benjamin D. Singer, Brunilda Balliu, David Koslicki, Pavel Skums, Alex Zelikovsky, Can Alkan, Onur Mutlu, Serghei Mangul. 
> "Technology dictates algorithms: Recent developments in read alignment" 
> arXiv preprint **arXiv**:2003.00110 (2020). [link](https://arxiv.org/abs/2003.00110)

Below is bibtex format for citation.

```bibtex
@article{alser2020technology,
  title={Technology dictates algorithms: Recent developments in read alignment},
  author={Alser, Mohammed and Rotman, Jeremy and Taraszka, Kodi and Shi, Huwenbo and Baykal, Pelin Icer and Yang, Harry Taegyun and Xue, Victor and Knyazev, Sergey and Singer, Benjamin D and Balliu, Brunilda and others},
  journal={arXiv preprint arXiv:2003.00110},
  year={2020}
}
```

##  <a name="license"></a>License
This repository is under MIT license. For more information, please read our [LICENSE.md](./LICENSE) file.


##  <a name="contact"></a>Contact
Please do not hesitate to contact us (alserm@ethz.ch, mangul@usc.edu) if you have any comments, suggestions, or clarification requests regarding the study or if you would like to contribute to this resource.
If you encounter bugs or have further questions or requests, you can raise an issue at the [issue page][issue].

[issue]: https://github.com/Mangul-Lab-USC/review-technology-dictates-algorithms/issues
