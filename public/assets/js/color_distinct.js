/**
 * Created by nullpointerexx on 3/21/16.
 * https://en.wikipedia.org/wiki/Help:Distinguishable_colors
 */
var colors = [
    '#F0A3FF',
    '#0075DC',
    '#993F00',
    '#4C005C',
    '#191919',
    '#005C31',
    '#2BCE48',
    '#FFCC99',
    '#94FFB5',
    '#8F7C00',
    '#9DCC00',
    '#C20088',
    '#003380',
    '#FFA405',
    '#FFA8BB',
    '#426600',
    '#FF0010',
    '#5EF1F2',
    '#00998F',
    '#E0FF66',
    '#740AFF',
    '#990000',
    '#FFFF00',
    '#FF5005',
];
var used_color = [];

function get_random_color(){
    var new_color;
    var i = 0;
    while(true){
        new_color = Math.floor(Math.random() * (colors.length - 1));
        if (used_color.indexOf(new_color) == -1){
            used_color.push(new_color);
            return new_color;
        }
        i++;
        if(i >= colors.length){
            used_color = [];
        }
    }
}