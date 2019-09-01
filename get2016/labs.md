---
layout: default
class: labs
title: "About GET Labs + Expo"
year: 2016
---


# About GET Labs + Expo

The GET Conference is preceded by a uniquely interactive event on April 25th called GET Labs + Expo.  Anyone can sign-up for <strong>GET Labs</strong>, where you get the opportunity to experience some of the best participatory health research studies available today. You can advance human health and disease research through direct participation in up to 17 different studies. <strong>GET Expo</strong> is a forum designed especially for researchers interested in learning about new tools and services that support the execution of successful participatory research studies. We know how challenging this can be, so we provide space for people with solutions and experience to come together. Details listed below.

Interested in attending Labs+Expo on April 25th?<br>
<a href="https://www.eventbrite.com/e/get-labs-tickets-21118572218"><img class="labs-btn" src="{{ "/get2010/images/btn_register_now.gif" | relative_url }}" alt="Register Now"></a>

<div class="video-responsive"><iframe width="560" height="315" src="https://www.youtube.com/embed/PvGVMg1wjoU" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></div>

<div class="labs-agenda">
<h2>Agenda April 25, 2016</h2>
  <ul class="labs-agenda-list">
    <li><time>12:00pm:</time> Attendee Registration</li>
    <li><time>01:00pm:</time> Labs Plenary Flash Talks</li>
    <li><time>02:00pm:</time> Labs + Expo</li>
    <li><time>06:00pm:</time> GETy Awards</li>
    <li><time>06:45pm:</time> Reception</li>
  </ul>
</div>


<h2 id="labs">GET Labs for Participants</h2>

{%- assign labs_str = "site.labs" | append: page.year -%}
{%- assign expos_str = "site.expos" | append: page.year -%}
{%- include_cached labs.html labs_col=labs_str expos_col=expos_str -%}

<h2 class="margin-top-tall">Who else is coming?</h2>


[See who is coming]({ site.baseurl }}/get2016/labs_participants) to this year's event. We'll update the list every couple of days
