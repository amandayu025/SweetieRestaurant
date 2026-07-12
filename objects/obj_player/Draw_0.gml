draw_self();
draw_text(
    x+10,
    y-20,
    global.hold_item
);
if(global.tomato_hold > 0) draw_text(x-20,y-20,string(global.tomato_hold));