import java.util.HashSet;

UI ui;
HashSet<Hitbox> hitboxes = new HashSet<Hitbox>();
HashSet<Render> changed = new HashSet<Render>();


//Gamestages:
//0 Setup players
//1 Gathering: Red or Black
//2 Gathering: Higher or Lower
//3 Gathering: In or Out
//4 Gathering: Same or Other or DISCO!!
//5 Piramide Round
//6 Setup Lenght of "De Bus"
//7 "De Bus"

void setup() {
  Game game = new Game();
}


void draw() { 
  if (changed.isEmpty()) {
    render();
  } else
  {
    println("Rerendering " + changed.size() + " elements");
    for (Render r : changed) {
      r.render();
    }
    changed.clear();
  }
}


void mousePressed() {
  for (Hitbox hb : hitboxes)
  {
    if (hb.Match())
    {
      hb.onClick();
      redraw();
      return;
    }
  }
}
