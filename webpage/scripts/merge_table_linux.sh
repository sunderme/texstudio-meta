#!/bin/bash
xidel index.html -e 'xquery version "3.0-xidel";
  declare variable $newtablerows := doc("file:///tmp/table.html")//tr;
  transform(function($e){
    if ($e instance of element() and name($e) eq "tbody" and $e/@id eq "linuxdownloads") then
     <tbody id="linuxdownloads">
     {$newtablerows}
     </tbody>
    else $e
  })' --output-format html > /tmp/new.html
 cp /tmp/new.html index.html
 
 

