---
title: About Seedcase
---

{{< include ../includes/_wip.qmd >}}

In clinical and health research, especially for small- to mid-sized
research groups, funding for building modern, open source software
infrastructures for managing and using data has been limited. This gap
has naturally led to organizational challenges for managing existing and
incoming data for many research initiatives, including the Danish Centre
for Strategic Research in Type 2 Diabetes (DD2) initiative, a national
research collaboration and database initiative established in 2010 with
continual enrollment of persons with type 2 diabetes. The aim of our
project is to close this gap by creating and implementing an efficient,
scalable, and open source data infrastructure framework that connects
data collectors, researchers, clinicians, and other stakeholders, with
the data, documentation, and findings within the DD2 study. This will
improve and extend the existing DD2 research infrastructure into an open
national state-of-the-art research infrastructure that will provide easy
and transparent access to this resource for researchers, clinicians and
stakeholders, thus enabling excellent data science driven research.
Furthermore, we will create this framework in such a way that other
research groups and companies, who are unable to adequately invest in
building infrastructures of this type, can relatively easily implement
it, and modify as needed, for their own purposes. By building this
framework, we have the potential to help propel research groups and
companies across Denmark (and globally) to quickly getting updated on
modern, scalable, and efficient approaches to working with data. Within
the DD2 setting, an open, transparent, and easy access to this
constantly growing resource has the potential of greatly improving the
interest in, use of, and scientific impact of this resource, thus
leading to substantial scientific and medical advancements,
individualised treatment and improved human health in not only persons
with type 2 diabetes, but population overall.

# Background

In clinical research, software and data infrastructure development is
undervalued and, aside from this funding call, underfunded, particularly
for small- to mid-sized research organizations. Clinical and health
researchers largely lack formal training, support, and awareness in
research software engineering (RSE) and in building and managing data
infrastructures. The result is that the overall software and
computational ecosystem, as well as the technical capacities to maintain
them, lags behind multiple other scientific domains (e.g.,
bioinformatics). Particularly with the recent rise of data science and
the greater focus on analytical reproducibility, this issue has become
increasingly apparent as data, and the skills required to work with it,
become ever larger, more technical, and complex. Indeed, investing in
and implementing scalable and modern data infrastructures and RSE
processes, built on open source software, have the potential to greatly
improve the quality of science, to produce more transparent and
streamlined workflows, to lead to reproducible research, and generally
better science in less time [@Lowndes2017].

Funding for participant recruitment and data acquisition has
historically been (and still is) easier to obtain than for building open
source software and infrastructures that support and enhance science,
particularly for managing and using data. This imbalance has naturally
led to organizational challenges for managing existing and incoming data
for many research initiatives within the field of clinical research,
including for the Danish Centre for Strategic Research in Type 2
Diabetes (DD2) initiative [@Nielsen2012; @DD2].

DD2 is a national type 2 diabetes (T2D) research collaboration and
database initiative that was established in 2010, with on-going
enrollment by hospital physicians and general practitioners (GPs).
Although T2D is a single diagnosis, it comprises several phenotypes with
diverse prognoses and risks for complications, which can lead to
treatments tailored to each phenotype. The overarching aim of DD2 is to
improve and individualise the treatment of persons with T2D. Figure 1
shows the several datasets within DD2 [@Jakobsen2021; @Gylfadottir2020;
@Stidsen2017; @Valentiner2019]. DD2 has received extensive funding from
the Danish Council for Strategic Research and the Novo Nordisk
Foundation as well as a Steno National Collaborative Grant for deep
phenotyping. Continuously recruiting more participants, adding new data,
and expanding the data access to researchers throughout Denmark and
abroad has the potential to further increase the value of DD2. However,
this comes with higher costs and resources for maintaining, extending,
and improving on the existing DD2 research infrastructure.

Building modern data infrastructures has slowly been taking greater
priority by funding and research agencies globally. For instance, the UK
Biobank [@Sudlow2015; @UKBiobank] is a large-scale biomedical database
with highly detailed data on \~500,000 participants. It is regularly
expanded with additional data and is globally accessible to approved
researchers and is a role model to building a modern research
infrastructure.

While the UK Biobank is a source of inspiration on the state-of-the-art,
the underlying infrastructure itself is not openly accessible and
reusable. The same applies to a similar Danish initiative, the "*Single
path to access Danish health data*" project [@sundhedsdata], where the
Danish government and individual regions are collaborating to map out
all Danish health data. Another state-of-the-art initiative led by the
University of Chicago, USA is Gen3 [@gen3], which contains modular open
source services that can form the basis for a data infrastructure
[@ctds; @gen3software] and powers several research platforms, including
the National Institutes of Health [@gen3platform]. However, we are
unaware of any similar current national efforts that are open source,
re-usable, and suitable for the Danish and EU legal context.

Our primary aim is to create and implement an efficient, scalable, and
open source data infrastructure *framework* that connects data
collectors, researchers, clinicians, and other stakeholders, with the
data, documentation, and findings within the DD2 study. This will
improve and extend the existing DD2 into an open national
state-of-the-art research infrastructure that will provide easy and
transparent access to this resource for researchers, thus enabling
excellent data science driven research. Our secondary aim is to create
this framework in such a way so that other research groups and
companies, who are unable to adequately invest in building similar
infrastructures, can relatively easily implement it and modify as needed
for their own purposes.

## Who we are

The seedcase project originates from the Steno Diabetes Centre Aarhus in
Denmark, and is funded by a five year grant from the Novo Nordisk
Foundation. The grant pays the salary and overheads for three/four
employees for five years.
