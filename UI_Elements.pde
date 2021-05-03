interface Render {
  void render();
}

class UI implements Render
{
  PGraphics pgUI;
  
  UI() {
    pgUI = createGraphics(width, height, P2D);
    pgUI.beginDraw();
    pgUI.rectMode(CENTER);
    pgUI.noStroke();
    pgUI.endDraw();
  }
  
  void render() 
  {
    pgUI.beginDraw();
    pgUI.clear();
    pgUI.endDraw();
    
    image(pgUI, 0, 0);
  }
}

abstract class Hitbox
{
  protected int x1;
  protected int y1;
  protected int x2;
  protected int y2;

  Hitbox()
  {
    hitboxes.add(this);
  }

  boolean Match()
  {
    return mouseX>=x1 && mouseX<=x2 && mouseY>=y1 && mouseY<=y2;
  }

  abstract void onClick();

  void destroy()
  {
    println("removed hitbox.");
    hitboxes.remove(this);
  }
}

class startGame extends Hitbox
{
  PVector pos, dim;

  startGame(int xPos, int yPos, int plaatsBreedte, int plaatsHoogte)
  {
    pos = new PVector( xPos, yPos );
    dim = new PVector( plaatsBreedte, plaatsHoogte );
    x1 = int(pos.x - dim.x/2);
    x2 = int(pos.x + dim.x/2);
    y1 = int(pos.y - dim.y/2);
    y2 = int(pos.y + dim.y/2);
  }

  void render()
  {
    ui.pgUI.beginDraw();
    ui.pgUI.fill(100, 0, 0);
    ui.pgUI.rect(pos.x, pos.y, dim.x, dim.y);
    ui.pgUI.endDraw();
  }

  public void onClick()
  {
  }
}

class PlayerLocation extends Hitbox
{
  Player player;
  
  public void onClick()
  {
    
    
  }
}
