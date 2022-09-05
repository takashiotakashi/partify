import { Controller } from "@hotwired/stimulus"
import anychart from "anychart";

// Connects to data-controller="cloud"
export default class extends Controller {
  static values = { words: Array }

  connect() {
    console.log("connected cloud");

    this.cloud();
  }

  cloud() {


   // create a tag (word) cloud chart
    var chart = anychart.tagCloud(this.wordsValue);

    chart.title("Here's what you've been listening to")
    // set an array of angles at which the words will be laid out
    chart.angles([0])
    // enable a color range
    chart
      .colorRange(true)
      .normal({
        fontFamily: 'Rubik'
      })
      .hovered({
        fill: '#df8892'
      })
      .selected({
        fill: '#df8892',
        fontWeight: 'bold'
      });

    chart.angles([0])
    // enable a color range
    chart.colorRange(true);
    // set the color range length
    // chart.colorRange().length('10%');

    // display the word cloud chart
    chart.container("word-cloud");
    chart.draw();
  }
}
