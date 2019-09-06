---
layout: default
class: labs
title: "About GET Labs"
year: 2014
---

# About GET Labs

Some of the most well-characterized humans on earth attend GET Labs. Many of these omic astronauts have already obtained personal genome sequencing, had their microbiomes characterized at various bodily habitats, and know something about the average length of their telomeres. Attendees often look forward to the opportunity to spit, swab, or be poked, measured, and surveyed for the good of science. The prospect of gaining access to these pioneers (and their data!) attracts an increasing number of research groups to join us for this event and organize phenotyping booths, specimen collection stations, sensor distribution and other activities.

**Attendance at GET Labs is by invitation only**. This is a separate event from GET Conference, although both events are intimate and many people do participate in both. There are three ways to seek an invitation to this event:

*   **Research groups:** [Apply to attend](https://docs.google.com/forms/d/1Uwqmmp0ARwTmuEmgnwxIWeEE10NUpf3d8py2z8QJYsU/viewform).
*   **Harvard Personal Genome Project participants**: Log-in and [apply to attend](https://my.pgp-hms.org/third_party/18).
*   **Event sponsors**: Email jason@personalgenomes.org

While we do anticipate growing this event to support much broader audiences, currently we are focused on bringing together well-informed volunteers with extensive public data and researchers who wish to study them. At this point, our attendees are drawn from the Harvard Personal Genome Project (PGP). The Harvard PGP now has a cohort of more than 3000 eager, enrolled participants. These well-characterized individuals are enthusiastic and willing to contribute to the advancement of science in astounding ways. Many of them already have open-access whole genome data, health records, microbiome data, and cell lines.

<div class="giant-text"><p class="margin-top-extra">Researchers will explore a wide range of human traits and their variability.</p></div>

**GET LABS AGENDA FOR APRIL 29TH & VENUE MAP:** Download now as a [PDF]({{ "/get2014/images/GETLABS_floorplan_agenda_04292014.pdf" | relative_url }}).

[![GETLABS Floorplan Agenda 2015]({{ "/get2014/images/getlabs_agenda_floorplan_500px.jpg)" | relative_url }}]({{ "/get2014/images/GETLABS_floorplan_agenda_04292014.pdf" | relative_url }})

{% assign labs_str = "site.labs" | append: page.year %}
{%- include_cached labs.html labs_col=labs_str -%}

{% capture labs_footer%}
**Suggest a GET Lab:** If you want to recommend a researcher or research project, [we welcome your suggestions](http://www.getconference.org/get2014/contact.html). Thank you!

**Fellows program:** We provide competitive support to researchers who wish to bring their research to GET Labs. [Learn more](http://www.getconference.org/get2014/fellows.html). Update: Thanks to all the applicants, all fellows have been selected and notified for the 2014 program.
{% endcapture %}

<div class="labs-footer2014">
  {{ labs_footer | markdownify }}
</div>
