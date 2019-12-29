# 8Values App

A Flutter app version of the popular political quiz <a href="http://8values.github.io" target="_blank">8values.github.io</a>.
<br/><br/>

## Disclaimer
I'm not affiliated with the creator(s) of 8values.github.io in any way. Their project was open source (which I truly appreciate) and I created this app as a hobby project for the fun of it. Please give them a visit if you'd like to learn more about how 8Values works!
<br/><br/>

## Introduction

I've done the 8Values quiz on its original site many times over the years and found it to be pretty accurate when it labelled me what it thought was appropriate. Since the web-app was open source, it was quite easy to deduce the algorithm by going through the source code and dry running it. 

As for this app; I created it while learning how to work with Flutter. This is my very first app and I'm pretty satisfied with how it turned out. There's a lot to be desired visually, sure, but I think it's a pretty solid starting point and I might come back to it later with a bit more experience and improve the UX. This app won't be released for iOS as I don't have the resources to build or test iOS apps.
<br/><br/>

## How the Quiz Works
There are a few steps to the calculation.

### Setting Up the Data
Each question (out of the 70 available) has four values for "econ" (economic axis), "dipl" (diplomatic axis), "govt" (civil axis) and "scty" (societal axis) <strong>(question_data.dart).</strong>

Also, each answer is given a weighting with "Strongly Agree" given a weight of 1, "Agree" given a weight of 0.5, "Neutral" given a weight of 0, "Disagree" given a weight of -0.5 and "Strongly Disagree" given a weight of -1 <strong>(answer_data.dart).</strong>

Finally, a list of ideologies is created with a score for each axis that would result in that ideology being selected <strong>(result_data.dart)</strong> along with a list of titles for each axis that is dependant on the score for that axis <strong>(axis_data.dart)</strong>.

### Adding Up and Processing the Scores
When each question is answered, the relevant final value is added to the total score for each axis. <br/>
<code>econ_score = econ_score + (question_econ_value * ans_weight)</code>

When all the questions have been answered, the score for each axis is compared to the total maximum achievable score for that axis and the percentage difference is calculated. <br/>
<code>econ_percentage = ((econ_score + max_econ_score)/(2 * max_econ_score)) * 100</code>

### Figuring out the Results
The percentage scores for each axis is then compared to the axis titles directly to figure out the label for each axis. 

Finally, a simple distance formula is used with varying exponential values (given below) to calculate the distances from the percentage scores for each axis to the respective axes of each possible ideology. The ideologies that is the closest is selected. 

<pre>
  dist  = dist + ((ideology_econ - econ_percentage) ^ 2 )
  dist  = dist + ((ideology_dipl - dipl_percentage) ^ 1.73856063 )
  dist  = dist + ((ideology_govt - govt_percentage) ^ 2 )
  dist  = dist + ((ideology_scty - scty_percentage) ^ 1.73856063 )
</pre>

### Displaying the Results
There's a small trick here. The percentage scores for each axis translate as follows;
<pre>
  equality = econ_percentage
  nation = 100 - dipl_percentage
  liberty = govt_percentage
  tradition = 100 - scty_percentage
</pre>
As you can see, the values for the economic and civil axes are flipped from the other two.
<br/><br/>

## Final Notes
This was a pretty fun app to create! Flutter, I've learned is extremely easy to pick up, especially if you've used something like React before (or JS in general, even) and it's very powerful when it comes to creating responsive user interfaces and apps really quickly. I'm looking forward to working with it more and figuring out some of the more difficult aspects of it. 

Please feel free to contact me at arcturus.office@gmail.com if you have any concerns, doubts, questions or inquiries. 

Thank you for taking a peek at my app - I appreciate the support! 
<br/><br/>
