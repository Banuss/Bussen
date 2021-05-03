class Game
{
  
  int gameStage;
  ArrayList<Player> players; 

  Game()
  {
    players = new ArrayList<Player>();
    gameStage = 0;
  }
  
  void nextStage()
  {
    gameStage++;
  }
  
  void AddPlayer(Player player)
  {
    players.add(player);
  }
}


class Player
{
  int loc;
  Card[] cards = new Card[4];
   
  Player(int loc)
  {
    this.loc = loc;
  }
  
  void AddCard(Card card, int round)
  {
    cards[round] = card;
  }
  
  boolean HasCard(Card card)
  {
    return false;
  }
}
