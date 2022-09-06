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
    let data = this.wordsValue
    var chart = anychart.tagCloud(data);

    // chart.title("Here's what you've been listening to")
    // set an array of angles at which the words will be laid out
    chart.angles([0])
    // enable a color range

    // create and configure a color scale.
    var customColorScale = anychart.scales.linearColor();
    customColorScale.colors(["#6e6e6e", "#ffffff"]);

    // set the color scale as the color scale of the chart
    chart.colorScale(customColorScale);

    // chart.data(data, {mode: "by-word"});

    // chart.background().fill("black")

    var background = chart.background();
    background.fill({
      // set colors position
      keys: ["#400101", "#000", "#000", "#07012e"],
      // set angle of colors drawing
      angle: -130
    });

    chart

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

    // display the word cloud chart
    chart.container("word-cloud");
    chart.draw();
  }
}
