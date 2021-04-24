class Game
{
  ArrayList<Player> players = new ArrayList<Player>();

  Game()
  {
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


class GatheringCards
{
  //Rood Zwart


  //
}

class Piramid
{
}
